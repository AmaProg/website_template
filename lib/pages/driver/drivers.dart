import 'package:flutter/material.dart';
import 'package:website_template/widgets/custom_text.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomText(
      text: "Drivers",
    ));
  }
}
