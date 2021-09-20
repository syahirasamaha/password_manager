import 'package:flutter/material.dart';
import 'package:password_manager/core/viewModel/landing_view_model.dart';
import 'package:password_manager/ui/view/base_view.dart';
import 'package:provider/provider.dart';

class UserInfo extends StatelessWidget {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return BaseView<LandingViewModel>(builder: (context, viewModel, _) {
      return Consumer<LandingViewModel>(builder: (context, viewModel, _) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                '${viewModel?.info!.website ?? ''}',
              ),
            ),
            body: displayUserInfo(context, viewModel),
            floatingActionButton: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  //viewModel.delete()
                  //navigate.pop()
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  primary: Colors.black,
                  side: BorderSide(width: 2, color: Colors.black),
                  backgroundColor: Colors.redAccent,
                ),
                child: Text(
                  'Delete',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        );
      });
    });
  }

  Widget displayUserInfo(BuildContext context, LandingViewModel viewModel) {
    return Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Text('Username :', style: TextStyle(fontSize: 20)),
                Expanded(child: Container()),
                Container(
                  width: 220,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Password :', style: TextStyle(fontSize: 20)),
                Expanded(child: Container()),
                Container(
                  width: 100,
                  height: 50,
                  child: TextField(
                    obscureText: isPasswordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.visibility,
                        ),
                        onPressed: () {
                          // setState(() {
                          //   isPasswordVisible = !isPasswordVisible;
                          // });
                        },
                      ),
                    ),
                  ),
                ),
                // IconButton(
                // icon: (Icons.obs),
                // onPressed: () {
                // //show or hide password
                // });
              ],
            ),
          ],
        ));
  }
}
