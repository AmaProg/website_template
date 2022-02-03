import 'package:flutter/material.dart';

//MaterialButtonRoundedRectangleBorder
class MaterialButtonDoubleRounded extends StatelessWidget {
  const MaterialButtonDoubleRounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3, left: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: const Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          )),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () {},
        color: const Color(0xff0095ff),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Text(
          "Sign up",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}
