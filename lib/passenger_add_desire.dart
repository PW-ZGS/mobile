import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openapi/openapi.dart';
import 'package:provider/provider.dart';
import 'package:regis_mobile/api_provider.dart';
import 'package:regis_mobile/geocode.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'offices.dart';

class Office
{
  final int id;
  final String name;
  Office({required this.id, this.name = 'Office'});
}

class PassengerAddDesireScreen extends StatefulWidget {
  @override
  _PassengerAddDesireScreenState createState() => _PassengerAddDesireScreenState();
}

class _PassengerAddDesireScreenState extends State<PassengerAddDesireScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fromController = TextEditingController();
  TimeOfDay time_from = TimeOfDay(hour: 7, minute: 0);
  TimeOfDay time_to = TimeOfDay(hour: 9, minute: 0);
  var distance = 500;
  int temp_distance = 100;
  String? office_id = null;

  void pickValue() {
    showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select maximal distance"),
            content:StatefulBuilder(
              builder: (context, setState) {
                return NumberPicker(
                    value: distance,
                    minValue: 50,
                    maxValue: 500,
                    step: 50,
                    onChanged: (value) => setState(() => distance = value),
                  );
              }
            ),
            
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  setState((){});
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
      }

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
              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: Row(
                    children: [
                      Text('Time from: ${time_from.format(context)}'),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          showTimePicker(
                            context: context,
                            initialTime: time_from,
                          ).then((_time) {
                            if (_time == null) return;
                            setState(() {
                              print(_time);
                              time_from = _time;
                            });
                          });
                        },
                        child: Text('Select time'),
                      ),
                    ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: Row(
                    children: [
                      Text('Time to: ${time_to.format(context)}'),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          showTimePicker(
                            context: context,
                            initialTime: time_to,
                          ).then((_time) {
                            if (_time == null) return;
                            setState(() {
                              print(_time);
                              time_to = _time;
                            });
                          });
                        },
                        child: Text('Select time'),
                      ),
                    ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: Row(
                    children: [
                      Text('Max distance: ${distance} m'),
                      Spacer(),
                      ElevatedButton(
                        onPressed: pickValue,
                        child: Text('Select distance'),
                      ),
                    ],
                ),
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
                                    return;
                                  }
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
                          var message = 'From: ${my_location.latitude.toStringAsFixed(5)}, ${my_location.longitude.toStringAsFixed(5)}\n' +
                            'To: Office 1\n' +
                            'Time from: ${time_from.format(context)}\n' +
                            'Time to: ${time_to.format(context)}\n' +
                            'Max distance: ${distance} m';
                          return AlertDialog(
                            title: Text('Your desire'),

                            content: Text(message),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  if (office_id == null) return;
                                  var prefs = await SharedPreferences.getInstance();
                                  var user_id = prefs.getString('user_hash');
                                  var builder = PassengerRouteInputBuilder();
                                  builder.userId = user_id;
                                  builder.startPoint.latitude = my_location.latitude;
                                  builder.startPoint.longitude = my_location.longitude;
                                  var dt = DateRangeBuilder();
                                  dt.startDate = 10000;
                                  dt.endDate = 20000;
                                  builder.timeRange = dt;
                                  builder.officeId = office_id;
                                  builder.maxDist = distance;
                                  var dto = builder.build();
                                  print(dto.toString());
                                  var reply = await context.read<APIProvider>().api.getDefaultApi()
                                    .passengerRoutesToPost( passengerRouteInput: dto);
                                  
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