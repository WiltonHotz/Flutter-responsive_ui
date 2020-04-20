// contains the widgets that will be used for mobile layout of home,
// portrait and landscape

import 'package:flutter/material.dart';
import 'package:responsivearchitecture/widgets/app_drawer/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30.0,
              ),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          AppDrawer(),
        ],
      ),
    );
  }
}
