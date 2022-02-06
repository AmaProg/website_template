import 'package:flutter/widgets.dart';
import 'package:website_template/config/routes/router.dart';
import 'package:website_template/config/routes/routes.dart';
import 'package:website_template/constants/controllers.dart';
import 'package:website_template/controllers/navigation_controller.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
