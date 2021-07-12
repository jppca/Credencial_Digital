import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

//My imports
import 'package:credeuan/widgets/widgets_home_page/widget_data.dart';
import 'package:credeuan/widgets/widgets_home_page/widget_data_Institution.dart';
import 'package:credeuan/widgets/widgets_home_page/widget_photo_data.dart';
import 'package:credeuan/widgets/widgets_home_page/widget_validity.dart';
import 'package:credeuan/widgets/widgets_home_page/widget_button_logout.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 249, 255, 1),
//Widget de barra indicativa con boton  para cerrar sesión
      appBar: AppBar(
        elevation: 0.0,
        leading: SizedBox(),
        title: Center(
          child: Text(
            'PERFIL',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
//Widget para cerrar sesión
          WButtonLogout(),
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
//Widget  de datos de institutición(Imagen)
                      WDataInstitution(img: 'assets/imguan.png'),
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
//Widget  de datos de estudiante.
                      WData(
                          unidadAcademica: 'Economía e informática',
                          programaAcademico: 'Lic. Sistemas Computacionales',
                          correoInstitucional: '123456@uan.edu.mx',
                          matriculaAcademica: '123456'),
                      SizedBox(
                        height: 10,
                      ),
//Widget  de peridos escolares cursados, perido actual y no cursados de estudiante.
                      Container(
                        width: MediaQuery.of(context).size.width - 30,
                        child: Card(
                          elevation: 5,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 20.0,
                                ),
                                Center(
                                  child: Container(
                                    child: Text(
                                      'Vigencia',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    WVigencia(
                                        colorBorde:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        colorRelleno:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        colorIcono:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        vigencia: '2017-18'),
                                    WVigencia(
                                        colorBorde:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        colorRelleno:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        colorIcono:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        vigencia: '2018-19'),
                                    WVigencia(
                                        colorBorde:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        colorRelleno:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        colorIcono:
                                            Color.fromRGBO(188, 224, 253, 1),
                                        vigencia: '2019-20'),
                                    WVigencia(
                                        colorBorde: Colors.blue,
                                        colorRelleno: Colors.blue,
                                        colorIcono: Colors.white,
                                        vigencia: '2020-21'),
                                    WVigencia(
                                        colorBorde: Colors.grey[350],
                                        colorRelleno: Colors.white,
                                        colorIcono: Colors.white,
                                        vigencia: '2021-22'),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
//Widget de menu de opciones
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Colors.white,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        overlayOpacity: 0.5,
        elevation: 8.0,
        animationSpeed: 100,
        children: [
          SpeedDialChild(
              label: "PDF",
              child: Icon(Icons.attach_file, color: Colors.blue),
              labelBackgroundColor: Colors.white,
              backgroundColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, '/pdf');
              }),
          SpeedDialChild(
              label: "Cámara",
              child: Icon(Icons.camera_alt, color: Colors.blue),
              labelBackgroundColor: Colors.white,
              backgroundColor: Colors.white,
              onTap: () {}),
          SpeedDialChild(
              label: "QR",
              child: Icon(Icons.qr_code, color: Colors.blue),
              labelBackgroundColor: Colors.white,
              backgroundColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, '/qr');
              }),
        ],
      ),
    );
  }
}
