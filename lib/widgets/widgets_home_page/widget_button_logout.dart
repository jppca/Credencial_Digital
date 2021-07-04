import 'package:flutter/material.dart';

class WButtonLogout extends StatelessWidget {
  const WButtonLogout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          icon: Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ));
  }
}
