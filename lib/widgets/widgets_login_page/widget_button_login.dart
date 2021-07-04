import 'package:flutter/material.dart';

class WButtonLogin extends StatelessWidget {
  final IconData icon;
  final String textButton;
  final TextEditingController textcontroller;
  final Color colorRelleno;
  final Color colorTextIco;
  const WButtonLogin(
      {Key key,
      @required this.textButton,
      @required this.textcontroller,
      @required this.icon,
      @required this.colorRelleno,
      @required this.colorTextIco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 10),
      margin: EdgeInsets.only(bottom: 20, left: 30, right: 30),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: this.colorRelleno,
        //  borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 1.0,
          color: this.colorTextIco,
        ),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Row(
          children: [
            Icon(
              this.icon,
              color: this.colorTextIco,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  this.textButton,
                  style: TextStyle(
                    color: this.colorTextIco,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
