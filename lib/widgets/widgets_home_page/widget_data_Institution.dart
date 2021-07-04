import 'package:flutter/material.dart';

class WDataInstitution extends StatelessWidget {
  final String img;
  const WDataInstitution({Key key, @required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        //elevation: 10,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: 250,
                child: Image.asset(this.img),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
