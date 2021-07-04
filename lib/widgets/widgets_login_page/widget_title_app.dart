import 'package:flutter/material.dart';

class WTitleApp extends StatelessWidget {
  final String title;
  final String titleExt;
  const WTitleApp({Key key, @required this.title, @required this.titleExt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            this.title,
            style: TextStyle(fontSize: 35, color: Colors.blue),
          ),
          Text(
            this.titleExt,
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
