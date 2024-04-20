import 'package:flutter/material.dart';
import 'package:regis_mobile/screen_frame.dart';

Future<List<DriverRoute>> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return [DriverRoute(id: 2137), DriverRoute(id: 420), DriverRoute(id: 33)];
}
class DriverRoute
{
  final int id;
  final String subtitle;
  DriverRoute({required this.id, this.subtitle = 'From A to B'});
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
            color: Colors.lightGreen
          ),
          child: ListTile(
            title: Text('Route ${route.id}'),
            subtitle: Text(route.subtitle),
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

  Future<List<DriverRoute>> _refreshData() async {
    setState(() {});
    return fetchData();
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
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refreshData,
        child: FutureBuilder<List<DriverRoute>>(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot<List<DriverRoute>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ListView.builder(
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
