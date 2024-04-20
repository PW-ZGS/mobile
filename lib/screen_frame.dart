import 'package:app_minimizer/app_minimizer.dart';
import 'package:flutter/material.dart';



class ScreenFrame extends StatelessWidget {
  const ScreenFrame({super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked:(didPop) => FlutterAppMinimizer.minimize(),
      child: Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: null,
        automaticallyImplyLeading: false
      ),
      body: body
      )
    );
  }
}