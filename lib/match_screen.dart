import 'package:flutter/cupertino.dart';
import 'package:openapi/openapi.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'web_widget.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final link = ModalRoute.of(context)!.settings.arguments as String;
    return ScreenFrame(
      title: '',
      body: Center(
        child: WebWidget(serverUrl: link,)
      ),
    );
  }
}
