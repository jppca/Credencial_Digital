import 'package:flutter/material.dart';

class WVigencia extends StatelessWidget {
  final Color colorBorde;
  final Color colorRelleno;
  final Color colorIcono;
  final String vigencia;
  const WVigencia(
      {Key key,
      @required this.colorBorde,
      @required this.colorRelleno,
      @required this.colorIcono,
      @required this.vigencia})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          margin: new EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            border: Border.all(
              color: this.colorBorde,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(100),
            color: this.colorRelleno,
          ),
          child: Icon(
            Icons.arrow_downward,
            color: this.colorIcono,
          ),
        ),
        Container(
          padding: new EdgeInsets.all(5),
          child: Text(
            this.vigencia,
            style: TextStyle(color: Colors.blue, fontSize: 8),
          ),
        )
      ],
    );
  }
}
