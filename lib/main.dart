import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'sign_up.dart';
import 'select.dart';
import 'screen_frame.dart';

void main() async {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Basics',
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          // ···
          brightness: Brightness.light,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/select': (context) => SelectScreen(),
        '/signup': (context) => SignUpScreen(),
      },
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      title: 'Start Screen',
      body: Center(
        child: ElevatedButton(
          child: Text('Start!'),
          onPressed: () {
            SharedPreferences.getInstance().then((prefs) {
              var hash = prefs.getString('user_hash');
              if (hash == null || hash.isEmpty) {  
                Navigator.pushNamed(context, '/signup');
                return;
              }
              Navigator.pushNamed(context, '/select');
            });
          },
        ),
      ),
    );
  }
}