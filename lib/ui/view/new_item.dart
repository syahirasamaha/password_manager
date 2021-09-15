import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
  final TextEditingController websiteController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create New Item'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: websiteController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Row(
                  children: [
                    FlatButton(
                      onPressed: () {
                        //exit page
                      },
                      textColor: Colors.blue,
                      child: Text('Cancel'),
                    ),
                    FlatButton(
                      onPressed: () {
                        //save data & exit page
                      },
                      textColor: Colors.blue,
                      child: Text('Save'),
                    ),
                  ],
                ),
              ],
            )));
  }
}
