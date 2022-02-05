import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website_template/utils/helpers/responsiveness.dart';
import 'package:website_template/widgets/large_screen.dart';
import 'package:website_template/widgets/side_menu.dart';
import 'package:website_template/widgets/small_screen.dart';
import 'package:website_template/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
