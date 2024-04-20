import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'package:geocoding/geocoding.dart';

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



  Future<List<Office>> fetch_offices() async
  {

    await Future.delayed(Duration(seconds: 1));
    return [Office(id: 1, name: 'Office 1'), Office(id: 2, name: 'Office 2')];
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
                    FutureBuilder<List<Office>>(
                      future: fetch_offices(),
                      builder: (BuildContext context, AsyncSnapshot<List<Office>> snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return DropdownButtonFormField<Office>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Select an address',
                                ),
                                items: snapshot.data?.map((Office value) {
                                  return DropdownMenuItem<Office>(
                                    value: value,
                                    child: Text(value.name),
                                  );
                                }).toList(),
                                onChanged: (_) {},
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
                      List<Location> locations = await locationFromAddress(_fromController.text);
                      if (locations.isEmpty)
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
                      var loc = locations.first;
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Your route'),
                            content: Text('From: ${loc.latitude.toStringAsFixed(5)}, ${loc.longitude.toStringAsFixed(5)} \nTo: Office 1\nTime: ${time.format(context)}'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                              TextButton(
                                onPressed: () {
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