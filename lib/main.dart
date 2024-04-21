import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
import 'match_screen.dart';
import 'api_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    ChangeNotifierProvider<APIProvider>(
      create: (context) => APIProvider('http://18.199.107.206:30490'),
      child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Basics',
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        primaryColor: Colors.green[300],
        primaryColorLight: Colors.lightGreen[400],
        secondaryHeaderColor: Colors.lightBlue[400],
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreen,
          primary: Colors.green[700],
          secondary: Colors.lightBlue[700],
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
        '/passenger/desire/match': (context) => MatchScreen(),
      },
    );
  }
}

class StartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return ScreenFrame(
      canPop: false,
      title: '',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage('images/regis.png')),
            ElevatedButton(  
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                child: Text('Start', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black87,)),
              ),
              
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
                      prefs.remove('user_hash');
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
          ],
        ),
      ),
    );
  }
}