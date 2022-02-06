import 'package:flutter/material.dart';
import 'package:website_template/utils/helpers/local_navigator.dart';
import 'package:website_template/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(flex: 5, child: localNavigator()),
      ],
    );
  }
}
