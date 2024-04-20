import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screen_frame.dart';

class SelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      canPop: false,
      title: 'SelectScreen',
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 3,),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                child: Text('Driver'),
                onPressed: () {
                  Navigator.pushNamed(context, '/driver');
                },
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                child: Text('Passenger'),
                onPressed: () {
                  Navigator.pushNamed(context, '/passenger');
                },
              ),
            ),
            Spacer(flex: 2,),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                child: Text('Logout'),
                onPressed: () {
                  SharedPreferences.getInstance().then((prefs) {
                    prefs.remove('user_hash');
                    Navigator.pushNamed(context, '/');
                  });
                },
              ),
            ),
            Spacer(flex: 1,),
          ],
        ),
      )
    );
  }
}