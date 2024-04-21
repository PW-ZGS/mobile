import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:regis_mobile/screen_frame.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api_provider.dart';
import 'package:provider/provider.dart';

Future<List<DriverRoute>> fetchData(BuildContext context) async {
  var prefs = await SharedPreferences.getInstance();
  var user_id = prefs.getString('user_hash');
  var routes = (await context.read<APIProvider>().api.getDefaultApi()
                    .driverRoutesByUsersUserIdGet(userId: user_id!))
                    .data?.toList() ?? [];

  return routes;
}

class RouteTile extends StatelessWidget {
  const RouteTile({Key? key, required this.route}) : super(key: key);

  final DriverRoute route;

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
            color: Theme.of(context).primaryColor
          ),
          child: ListTile(
            title: Text('Route ${route.routeId!.substring(0, 5)}'),
            subtitle: Text('From: ${route.startPoint!.latitude!.toStringAsFixed(5)}, ${route.startPoint!.longitude!.toStringAsFixed(5)}\nTo: ${route.endPoint!.longitude!.toStringAsFixed(5)}, ${route.endPoint!.longitude!.toStringAsFixed(5)}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => 
            {
              Navigator.pushNamed(context, '/driver/route', arguments: route)
            },
          ),
        ),
      ),
    );
  }
}


class DriverScreen extends StatefulWidget {
  @override
  _DriverScreenState createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  Future<List<DriverRoute>> _refreshData(context) async {
    setState(() {});
    return fetchData(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      title: 'My routes',
      canPop: true,
      FAB: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/driver/add_route');
        },
        backgroundColor: Theme.of(context).primaryColorLight,
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: () =>_refreshData(context),
        child: FutureBuilder<List<DriverRoute>>(
          future: fetchData(context),
          builder: (BuildContext context, AsyncSnapshot<List<DriverRoute>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return snapshot.data!.isEmpty ?
                Center(child: Text('No routes added yet. \nAdd your first route!',
                  style: TextStyle(fontSize: 24),),) :
                ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return RouteTile(route: snapshot.data![index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
