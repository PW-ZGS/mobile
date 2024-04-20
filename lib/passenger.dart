import 'package:flutter/material.dart';
import 'package:regis_mobile/screen_frame.dart';

Future<List<Desire>> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return [Desire(id: 2137), Desire(id: 420), Desire(id: 33)];
}
class Desire
{
  final int id;
  final String subtitle;
  Desire({required this.id, this.subtitle = 'From A to B'});
}

class DesireTile extends StatelessWidget {
  const DesireTile({Key? key, required this.desire}) : super(key: key);

  final Desire desire;

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
            title: Text('Route ${desire.id}'),
            subtitle: Text(desire.subtitle),
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

  Future<List<Desire>> _refreshData() async {
    setState(() {});
    return fetchData();
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
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refreshData,
        child: FutureBuilder<List<Desire>>(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot<List<Desire>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ListView.builder(
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
