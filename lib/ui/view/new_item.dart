import 'package:flutter/material.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/service/navigator/navigation_service.dart';
import 'package:password_manager/core/viewModel/landing_view_model.dart';
import 'package:password_manager/ui/view/base_view.dart';
import 'package:provider/provider.dart';

class NewItem extends StatelessWidget {
  final TextEditingController websiteController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final NavigationService? _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return BaseView<LandingViewModel>(builder: (context, viewModel, _) {
      return Consumer<LandingViewModel>(builder: (context, viewModel, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Create New Item'),
          ),
          body: Padding(
              padding: EdgeInsets.all(30),
              child: ListView(
                children: <Widget>[
                  Row(
                    children: [
                      Text('Website :', style: TextStyle(fontSize: 20)),
                      Expanded(child: Container()),
                      Container(
                        width: 220,
                        height: 50,
                        child: TextField(
                          controller: websiteController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Username :', style: TextStyle(fontSize: 20)),
                      Expanded(child: Container()),
                      Container(
                        width: 220,
                        height: 50,
                        child: TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
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
                        width: 220,
                        height: 50,
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  _navigationService!.pop();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  primary: Colors.black,
                  side: BorderSide(width: 2, color: Colors.black),
                ),
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(width: 30),
              TextButton(
                onPressed: () async {
                  await viewModel.getUserInfo();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  primary: Colors.black,
                  backgroundColor: Colors.green,
                  side: BorderSide(width: 2, color: Colors.black),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        );
      });
    });
  }
}
