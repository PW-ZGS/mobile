import 'package:flutter/cupertino.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'passenger.dart';

class PassengerDesireScreen extends StatefulWidget {
  const PassengerDesireScreen({super.key});

  @override
  State<PassengerDesireScreen> createState() => _PassengerDesireScreenState();
}

class _PassengerDesireScreenState extends State<PassengerDesireScreen> {
  @override
  Widget build(BuildContext context) {
    final desire = ModalRoute.of(context)!.settings.arguments as Desire;
    return ScreenFrame(
      title: 'My desire',
      body: Center(
        child: Column(
          children: [
            Text('Id: ${desire.id}'),
            Text('sub: ${desire.subtitle}'),
          ],
        ),
      ),
    );
  }
}