import 'package:flutter/material.dart';

//My imports
import 'package:credeuan/widgets/widgets_home_page/widget_photo_data.dart';
import 'package:credeuan/widgets/widgets_qr_page/widget_QR_Image.dart';

class QrPage extends StatelessWidget {
  const QrPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 249, 255, 1),
//Widget de barra indicativa con boton de retorno a pantalla anterior
      appBar: AppBar(
        elevation: 0.0,
        title: Container(
          child: Center(
            child: Text(
              'CÓDIGO QR',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          SizedBox(
            width: 48,
          )
        ],
      ),

      body: Scrollbar(
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 45),
            child: Container(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
//Widget  de datos y fotografia de estudiante.
                      WPhotoData(
                          img: 'assets/io.png',
                          nombre: 'Francisco Villa',
                          rol: 'Estudiante'),
                      SizedBox(
                        height: 10,
                      ),
//Widget  de código QR de estudiante.
                      WQRImage(
                        data: '123456',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
