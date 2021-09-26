import 'package:flutter/material.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/router/router.dart';
import 'package:password_manager/core/service/navigator/navigation_service.dart';
import 'package:password_manager/core/viewModel/landing_view_model.dart';
import 'package:password_manager/ui/view/base_view.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatelessWidget {
  final NavigationService? _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return BaseView<LandingViewModel>(onModelReady: (viewModel) async {
      await viewModel.getUserInfo();
    }, builder: (context, viewModel, _) {
      return Consumer<LandingViewModel>(builder: (context, viewModel, _) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Password Manager'),
              actions: [_createNewItem(context)],
            ),
            body: buildWebsite(context, viewModel),
            floatingActionButton: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  viewModel.refresh();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  primary: Colors.black,
                  side: BorderSide(width: 2, color: Colors.black),
                ),
                child: Text('Refresh'),
              ),
            ),
          ),
        );
      });
    });
  }

  Widget _createNewItem(BuildContext context) {
    return ButtonTheme(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minWidth: 0,
      height: 0,
      child: IconButton(
          icon: Icon(Icons.add_circle_outline),
          onPressed: () =>
              _navigationService!.navigateTo(NavRouter.createNewItemRoute)),
    );
  }

  Widget buildWebsite(BuildContext context, LandingViewModel viewModel) {
    // return ListView.builder(
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text('${viewModel.info?.website ?? ''}'),
    //       onTap: () {
    //         _navigationService!.navigateTo(NavRouter.createUserInfoRoute);
    //       },
    //     );
    //   },
    // );
    return TextButton(
      onPressed: () {
        _navigationService!.navigateTo(NavRouter.createUserInfoRoute);
      },
      child: Text(
        '${viewModel.info?.website ?? ''}',
      ),
    );
  }
}
