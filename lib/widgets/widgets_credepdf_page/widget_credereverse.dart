import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class WCredeReverse extends StatelessWidget {
  final String data;
  const WCredeReverse({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
          width: 200,
          height: 230,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 25),
              Text(
                'ESCANEA',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              SizedBox(height: 5),
              Container(
                width: 100,
                height: 100,
                child: QrImage(
                  data: this.data,
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 40, right: 40),
                child: Text(
                  'Tú código QR es privado y único. Otras personas podrán escanearlo con la cámara para identificarte como estudiante.',
                  style: TextStyle(color: Colors.blue, fontSize: 10),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
