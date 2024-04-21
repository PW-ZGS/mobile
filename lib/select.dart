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
      title: '',
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 1,),
            Expanded(
              flex: 2,
              child: Center(child: Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 10),
                child: Text(
                  'Who are you today?',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ))
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                child: Text('I\'m a driver', style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.pushNamed(context, '/driver');
                },
                style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor),
              ),
            ),
            Spacer(flex: 1,),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                
                
                child: Text('I\'m a passenger', style: TextStyle(fontSize: 24)),
                onPressed: () {
                  Navigator.pushNamed(context, '/passenger');
                },
                style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).secondaryHeaderColor),

              ),
            ),
            Spacer(flex: 2,),
            Center(
              child: Container(
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
            ),
            Spacer(flex: 1,),
          ],
        ),
      )
    );
  }
}