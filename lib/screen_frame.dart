import 'package:app_minimizer/app_minimizer.dart';
import 'package:flutter/material.dart';



class ScreenFrame extends StatelessWidget {
  const ScreenFrame({super.key, required this.title, required this.body, this.FAB = null, this.canPop = false});

  final String title;
  final Widget body;
  final bool canPop;
  final Widget? FAB;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title.isEmpty ? null : AppBar(
        title: Text(title),
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: body,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: FAB,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      );
  }
}