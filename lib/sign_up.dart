import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screen_frame.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _contactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      title: 'SignUpScreen',
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text('Name'),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text('Contact'),
                    TextFormField(
                      controller: _contactController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a contact information',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter contact information';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              
              Spacer(),
              Center(
                child: ElevatedButton(
                  child: Text('Sign Up'),
                  onPressed: () {
                    print('Name: ${_nameController.text}');
                    print('Contact: ${_contactController.text}');
                    if (_formKey.currentState!.validate()) {
                      SharedPreferences.getInstance().then((prefs) {
                        prefs.setString('user_hash', '1234');
                        Navigator.pushNamed(context, '/select');
                      });
                    }
                  },
                ) 
              )
            ],
          ),
        ),
      )
    );
  }
}