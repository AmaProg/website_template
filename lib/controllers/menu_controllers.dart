import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website_template/config/routes/routes.dart';
import 'package:website_template/constants/style.dart';

class MenuController extends GetxController {
  static MenuController Instance = Get.find();

  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  //Methodes
  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  bool isActive(String itemName) => activeItem.value == itemName;

  bool isHovering(String itemName) => hoverItem.value == itemName;

  //Functions
  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageRoute:
        return _CustomIcon(Icons.trending_up, itemName);
      case DriverPageRoute:
        return _CustomIcon(Icons.drive_eta, itemName);
      case AuthenticationPageRoute:
        return _CustomIcon(Icons.dashboard, itemName);
      default:
        return _CustomIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _CustomIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
