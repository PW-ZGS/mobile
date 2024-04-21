import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:provider/provider.dart';
import 'package:regis_mobile/api_provider.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<PassengerRoute>> fetchData(BuildContext context) async {
  var prefs = await SharedPreferences.getInstance();
  var user_id = prefs.getString('user_hash');
  var routes = (await context.read<APIProvider>().api.getDefaultApi()
                    .passengerRoutesByUsersUserIdGet(userId: user_id!))
                    .data?.toList() ?? [];

  return routes;
}

class DesireTile extends StatelessWidget {
  const DesireTile({Key? key, required this.desire}) : super(key: key);

  final PassengerRoute desire;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 100,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).secondaryHeaderColor
          ),
          child: ListTile(
            title: Text('Desire ${desire.passengerRouteId!.substring(0, 3)}'),
            subtitle: Text('From: ${desire.startPoint!.latitude}, ${desire.startPoint!.longitude}\nTo: ${desire.endPoint!.longitude}, ${desire.endPoint!.longitude}'),  
            trailing: Icon(Icons.arrow_forward),
            onTap: () => 
            {
              Navigator.pushNamed(context, '/passenger/desire', arguments: desire)
            },
          ),
        ),
      ),
    );
  }
}


class PassengerScreen extends StatefulWidget {
  @override
  _PassengerScreenState createState() => _PassengerScreenState();
}

class _PassengerScreenState extends State<PassengerScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  Future<List<PassengerRoute>> _refreshData(BuildContext context) async {
    setState(() {});
    return fetchData(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      title: 'My desires',
      canPop: true,
      FAB: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/passenger/add_desire');
        },
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () =>_refreshData(context),
        child: FutureBuilder<List<PassengerRoute>>(
            future: fetchData(context),
          builder: (BuildContext context, AsyncSnapshot<List<PassengerRoute>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return snapshot.data!.isEmpty ?
                Center(child: Text('Currently no desires found. Add your first desire!')) :
               ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return DesireTile(desire: snapshot.data![index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
