import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openapi/openapi.dart';
import 'package:provider/provider.dart';
import 'package:regis_mobile/api_provider.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'package:regis_mobile/web_widget.dart';
import 'passenger.dart';
import 'package:webview_flutter/webview_flutter.dart';

Future<List<MatchesGet200ResponseInner>> fetchData(BuildContext context, PassengerRoute desire) async {
  var routes = (await context.read<APIProvider>().api.getDefaultApi()
                    .matchesGet(passengerRouteId: desire.passengerRouteId!))
                    .data?.toList() ?? [];

  return routes;
}

class PassengerDesireScreen extends StatefulWidget {
  const PassengerDesireScreen({super.key});

  @override
  State<PassengerDesireScreen> createState() => _PassengerDesireScreenState();
}

class _PassengerDesireScreenState extends State<PassengerDesireScreen> {

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  Future<List<MatchesGet200ResponseInner>> _refreshData(BuildContext context, PassengerRoute desire) async {
    setState(() {});
    return fetchData(context, desire);
  }

  @override
  Widget build(BuildContext context) {
    final desire = ModalRoute.of(context)!.settings.arguments as PassengerRoute;
    return ScreenFrame(
      title: 'Founded matches',
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () =>_refreshData(context, desire),
        child: FutureBuilder<List<MatchesGet200ResponseInner>>(
            future: fetchData(context, desire),
          builder: (BuildContext context, AsyncSnapshot<List<MatchesGet200ResponseInner>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return  snapshot.data!.isEmpty ? 
              Center(child: Text('Currently no matches found. Please try again later.')) :
              ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) 
                {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).secondaryHeaderColor
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Driver: ${snapshot.data![index].name}',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Contact: ${snapshot.data![index].contact}',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                            ),
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                SizedBox(
                                  height: 350,                             
                                  child: WebWidget(
                                    serverUrl: snapshot.data![index].link!,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: ElevatedButton(onPressed: (){
                                      Navigator.pushNamed(context, '/passenger/desire/match', arguments: snapshot.data![index].link);
                                  }, child: Icon(Icons.zoom_out_map, color: Colors.black,)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}