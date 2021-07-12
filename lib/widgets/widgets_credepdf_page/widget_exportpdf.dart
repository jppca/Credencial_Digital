import 'package:flutter/material.dart';

//My imports
import 'package:credeuan/widgets/widgets_credepdf_page/widget_button_credepdf.dart';

class WExportPdf extends StatelessWidget {
  const WExportPdf({Key key}) : super(key: key);

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
              Icon(
                Icons.folder,
                size: 60,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Credencial.pdf',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              Text(
                '15.7 kb, ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin:
                    EdgeInsets.only(bottom: 10, top: 10, left: 50, right: 50),
                child: WButtonCredePdf(
                    textButton: 'GUARDAR',
                    textcontroller: TextEditingController(),
                    icon: Icons.folder,
                    colorRelleno: Colors.blue,
                    colorTextIco: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 50, right: 50),
                child: WButtonCredePdf(
                    textButton: 'COMPARTIR',
                    textcontroller: TextEditingController(),
                    icon: Icons.mail,
                    colorRelleno: Colors.blue,
                    colorTextIco: Colors.white),
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
