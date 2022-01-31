import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

//My imports
import 'package:credencialdigital/widgets/widgets_credepdf_page/widget_crede.dart';
import 'package:credencialdigital/widgets/widgets_credepdf_page/widget_credereverse.dart';
import 'package:credencialdigital/widgets/widgets_credepdf_page/widget_exportpdf.dart';

class CredePdfPage extends StatefulWidget {
  CredePdfPage({Key key}) : super(key: key);

  @override
  _CredePdfPageState createState() => _CredePdfPageState();
}

class _CredePdfPageState extends State<CredePdfPage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 249, 255, 1),
//Widget de barra indicativa con botón de retorno a pantalla anterior.
      appBar: AppBar(
        elevation: 0.0,
        title: Container(
          child: Center(
            child: Text(
              'RESPALDO',
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
                      FlipCard(
                        key: cardKey,
                        flipOnTouch: true,
                        front: Container(
//widget del frente de credencial.
                          child: WCrede(
                            imgheader: 'assets/imguan.png',
                            imguser: 'assets/io.jpg',
                            tipeuser: 'ESTUDIANTE',
                            school: 'U.A de Economía e Informatica',
                            name: 'Francisco Villa',
                            career: 'Lic.Sistemas Computacionales',
                            entry: '2017',
                            idSchool: '123456',
                            periods: '17-18   18-19   19-20   20-21   21-22',
                          ),
                        ),
                        back: Container(
//widget de reverso de credencial.
                          child: WCredeReverse(
                            data: '123456',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
//Widget para exportar pdf.
                      WExportPdf(),
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
