import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screen_frame.dart';
import 'sign_up.dart';
import 'select.dart';
import 'driver.dart';
import 'driver_add_route.dart';
import 'driver_route.dart';
import 'passenger.dart';
import 'passenger_add_desire.dart';
import 'passenger_desire.dart';
import 'api_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  
  runApp(
    ChangeNotifierProvider<APIProvider>(
      create: (context) => APIProvider('http://localhost:8080'),
      child: MyApp()
    )
  );
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
        '/driver': (context) => DriverScreen(),
        '/driver/add_route': (context) => DriverAddRouteScreen(),
        '/driver/route': (context) => DriverRouteScreen(),
        '/passenger': (context) => PassengerScreen(),
        '/passenger/add_desire': (context) => PassengerAddDesireScreen(),
        '/passenger/desire': (context) => PassengerDesireScreen(),
      },
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      canPop: false,
      title: 'Start Screen',
      body: Center(
        child: ElevatedButton(
          child: Text('Start!'),
          onPressed: () async {
            SharedPreferences.getInstance().then((prefs) async {
              var hash = prefs.getString('user_hash');
              if (hash == null || hash.isEmpty) {
                Navigator.pushNamed(context, '/signup');
                return;
              }
              var reply = await context.read<APIProvider>().api.getDefaultApi()
                  .usersValidationGet(userId: hash);
              if (reply.statusCode == null)
              {
                Navigator.pushNamed(context, '/signup');
                return;
              }
              if (reply.statusCode != 200) {
                print('Account doesnt exist');
                prefs.remove('user_hash');
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