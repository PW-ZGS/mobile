import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'package:openapi/openapi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'offices.dart';
import 'geocode.dart';
import 'api_provider.dart';
import 'package:provider/provider.dart';


class Office
{
  final int id;
  final String name;
  Office({required this.id, this.name = 'Office'});
}

class DriverAddRouteScreen extends StatefulWidget {
  @override
  _DriverAddRouteScreenState createState() => _DriverAddRouteScreenState();
}

class _DriverAddRouteScreenState extends State<DriverAddRouteScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fromController = TextEditingController();
  TimeOfDay time = TimeOfDay(hour: 8, minute: 0);
  String? office_id = null;
  String? office_name = null;

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      canPop: false,
      title: 'Add new route',
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //time picker
              Row(
                  children: [
                    Text('Time: ${time.format(context)}'),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        showTimePicker(
                          context: context,
                          initialTime: time,
                        ).then((_time) {
                          if (_time == null) return;
                          setState(() {
                            print(_time);
                            time = _time;
                          });
                        });
                      },
                      child: Text('Select time'),
                    ),
                  ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text('From'),
                    TextFormField(
                      controller: _fromController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter an address',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text('To office'),
                    FutureBuilder<List<OfficesGet200ResponseInner>>(
                      future: fetch_offices(context),
                      builder: (BuildContext context, AsyncSnapshot<List<OfficesGet200ResponseInner>> snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return DropdownButtonFormField<OfficesGet200ResponseInner>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Select an address',
                                ),
                                items: snapshot.data?.map((OfficesGet200ResponseInner value) {
                                  return DropdownMenuItem<OfficesGet200ResponseInner>(
                                    value: value,
                                    child: Text(value.name!),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  if (value == null)
                                  {
                                    office_id = null;
                                    office_name = null;
                                    return;
                                  }
                                  office_name = value.name;
                                  office_id = value.officeId;
                                },
                                validator: (value) {
                                  if (value == null) {
                                    return 'Please select an address';
                                  }
                                  return null;
                                },
                              );
                        }
                      },
                    ),      
                  ],
                ),
              ),
              Spacer(),
              Center(
                child: ElevatedButton(
                  child: Text('Check route'),
                    onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      var my_location = MyLocation(latitude: 0, longitude: 0);
                      try
                      {
                        my_location = await getLocation(_fromController.text);
                      }
                      catch (e)
                      {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Error'),
                              content: Text('Address not found'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          }
                        );
                        return;
                      }
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Your route'),
                            content: Text('From: ${my_location.latitude.toStringAsFixed(5)}, ${my_location.longitude.toStringAsFixed(5)} \nOffice: ${office_name!}\nTime: ${time.format(context)}'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                              TextButton(
                                onPressed: () async{
                                  if (office_id == null) return;
                                  var prefs = await SharedPreferences.getInstance();
                                  var user_id = prefs.getString('user_hash');
                                  var builder = RouteInputBuilder();
                                  builder.startPoint = LocationBuilder();
                                  builder.startPoint.latitude = my_location.latitude;
                                  builder.startPoint.longitude = my_location.longitude;
                                  builder.fromTime = DateTime.utc(2024);
                        
                                  builder.userId = user_id;
                                  builder.officeId = office_id;
                                  builder.availableSeats = 4;
                                  var dto = builder.build();
                                  try
                                  {
                                    var reply = await context.read<APIProvider>().api.getDefaultApi()
                                      .driverRoutesToPost( routeInput: dto);
                                  }
                                  catch(e)
                                  {
                                    ;
                                  }

                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                },
                                child: Text('Save'),
                              ),
                            ],
                          );
                        }
                      );
                    }
                  },
                ) 
              )
            ],
          ),
        ),
      )
    );
  }
}