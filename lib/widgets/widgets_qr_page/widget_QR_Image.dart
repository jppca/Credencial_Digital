import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class WQRImage extends StatelessWidget {
  final String data;
  const WQRImage({Key key, @required this.data}) : super(key: key);

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
                height: 20.0,
              ),
              Text(
                'ESCANEA',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 200,
                height: 200,
                child: QrImage(
                  data: this.data,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin:
                    EdgeInsets.only(bottom: 10, top: 10, left: 50, right: 50),
                child: Text(
                  'Tú código QR es privado y único. Otras personas podrán escanearlo con la cámara para identificarte como estudiante.',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
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
