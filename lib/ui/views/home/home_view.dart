import 'package:flutter/material.dart';
import 'package:responsivearchitecture/ui/responsive/orientation_layout.dart';
import 'package:responsivearchitecture/ui/responsive/responsive_builder.dart';
import 'package:responsivearchitecture/ui/responsive/screen_type_layout.dart';

import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            portrait: HomeMobilePortrait(),
            landscape: HomeMobileLandscape(),
          ),
          tablet: HomeViewTablet(),
        );
      },
    );
  }
}
