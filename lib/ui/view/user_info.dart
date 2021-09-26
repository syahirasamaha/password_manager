import 'package:flutter/material.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/service/navigator/navigation_service.dart';
import 'package:password_manager/core/viewModel/landing_view_model.dart';
import 'package:password_manager/ui/view/base_view.dart';
import 'package:provider/provider.dart';

class UserInfoView extends StatefulWidget {
  final Info? info;

  const UserInfoView({Key? key, this.info});

  @override
  _UserInfoViewState createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  Info? info;
  late LandingViewModel viewModel;
  final NavigationService? _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return BaseView<LandingViewModel>(builder: (context, viewModel, _) {
      return Consumer<LandingViewModel>(builder: (context, viewModel, _) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                '${viewModel.info?.website ?? ''}',
              ),
            ),
            body: displayUserInfo(context, viewModel),
            floatingActionButton: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  viewModel.deleteUserInfo(info!);
                  _navigationService!.pop();
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
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${viewModel.info?.username ?? ''}'),
        );
      },
    );
  }
}
