import 'package:flutter/material.dart';

class WPhotoData extends StatelessWidget {
  final String img;
  final String nombre;
  final String rol;

  const WPhotoData(
      {Key key, @required this.img, @required this.nombre, @required this.rol})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    this.img,
                    isAntiAlias: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                this.nombre,
                style: TextStyle(
                    color: Colors.blue, fontSize: 18, fontFamily: 'Arial'),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                '$rol, Universidad Autónoma de Nayarit',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
