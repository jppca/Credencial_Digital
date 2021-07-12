import 'package:flutter/material.dart';

class WButtonCredePdf extends StatelessWidget {
  final IconData icon;
  final String textButton;
  final TextEditingController textcontroller;
  final Color colorRelleno;
  final Color colorTextIco;
  const WButtonCredePdf(
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
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: this.colorRelleno,
        border: Border.all(
          width: 1.0,
          color: this.colorTextIco,
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              this.icon,
              color: this.colorTextIco,
            ),
            Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(
                this.textButton,
                style: TextStyle(
                  color: this.colorTextIco,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
