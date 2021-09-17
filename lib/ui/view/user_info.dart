import 'package:flutter/material.dart';
import 'package:password_manager/core/viewModel/landing_view_model.dart';
import 'package:password_manager/ui/view/base_view.dart';
import 'package:provider/provider.dart';

class UserInfo extends StatelessWidget {
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
                  width: 220,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
