import 'dart:js';

import 'package:flutter/material.dart';
import 'package:website_template/config/routes/routes.dart';
import 'package:website_template/pages/authentification/authentification.dart';
import 'package:website_template/pages/driver/drivers.dart';
import 'package:website_template/pages/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriverPageRoute:
      return _getPageRoute(DriverPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
