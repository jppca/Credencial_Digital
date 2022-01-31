import 'package:flutter/material.dart';

class WDataInstitution extends StatelessWidget {
  const WDataInstitution({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  width: 250,
                  child: Text(
                    'LOGO INSTITUCIÓN',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
