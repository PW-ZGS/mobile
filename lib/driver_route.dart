import 'package:flutter/cupertino.dart';
import 'package:openapi/openapi.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'driver.dart';

class DriverRouteScreen extends StatefulWidget {
  const DriverRouteScreen({super.key});

  @override
  State<DriverRouteScreen> createState() => _DriverRouteScreenState();
}

class _DriverRouteScreenState extends State<DriverRouteScreen> {
  @override
  Widget build(BuildContext context) {
    final desire = ModalRoute.of(context)!.settings.arguments as DriverRoute;
    return ScreenFrame(
      title: 'My route',
      body: Center(
        child: Column(
          children: [
            Text('Id: ${desire.routeId}'),
          ],
        ),
      ),
    );
  }
}