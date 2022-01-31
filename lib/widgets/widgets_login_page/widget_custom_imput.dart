import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String placeholder;
  final TextEditingController textcontroller;
  final TextInputType keybordtype;
  final bool ispassword;
  const CustomInput(
      {Key key,
      @required this.placeholder,
      @required this.textcontroller,
      this.keybordtype = TextInputType.text,
      this.ispassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 20, bottom: 5, right: 10),
      margin: EdgeInsets.only(bottom: 20, left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          color: Colors.blue,
        ),
      ),
      child: TextField(
        controller: this.textcontroller,
        autocorrect: false,
        keyboardType: this.keybordtype,
        obscureText: this.ispassword,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: this.placeholder,
          hintStyle: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
