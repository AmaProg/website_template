import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  LoginAppBar({Key? key})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
