// contains the widgets that will be used for mobile layout of home,
// portrait and landscape

import 'package:flutter/material.dart';
import 'package:responsivearchitecture/viewmodels/home_view_model.dart';
import 'package:responsivearchitecture/widgets/app_drawer/app_drawer.dart';
import 'package:responsivearchitecture/widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Expanded(
            child: Center(
              child: Text(model.title),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          AppDrawer(),
          Expanded(
            child: Center(
              child: Text(model.title),
            ),
          ),
        ],
      ),
    );
  }
}
