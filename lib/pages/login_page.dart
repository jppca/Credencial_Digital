import 'package:flutter/material.dart';

//My imports
import 'package:credeuan/widgets/widgets_login_page/widget_title_app.dart';
import 'package:credeuan/widgets/widgets_login_page/widget_button_login.dart';
import 'package:credeuan/widgets/widgets_login_page/widget_custom_imput.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
//Widget de encabezado de interfaz de inicio de sesión y registro.
                  /*ClipRRect(
                    child: Container(
                      child: Image.asset('assets/header.png'),
                    ),
                  ),*/
                  SizedBox(
                    height: 80,
                  ),
                  WTitleApp(title: 'CREDE', titleExt: 'UAN'),
                  SizedBox(
                    height: 80,
                  ),
//Widget para registro del email de usuario.
                  CustomInput(
                      placeholder: 'Correo institucional',
                      textcontroller: TextEditingController(),
                      keybordtype: TextInputType.emailAddress),
//Widget para registro de la contraseña de usuario.
                  CustomInput(
                    ispassword: true,
                    placeholder: 'Contraseña',
                    textcontroller: TextEditingController(),
                    keybordtype: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 80,
                  ),
//Widget para  inciar sesión(boton).
                  WButtonLogin(
                      icon: Icons.login,
                      textButton: 'INICIAR SESIÓN',
                      colorRelleno: Colors.blue,
                      colorTextIco: Colors.white),
//Widget para hacer registro en la App(boton).
                  WButtonLogin(
                      icon: Icons.person,
                      textButton: 'REGISTRARSE',
                      colorRelleno: Colors.white,
                      colorTextIco: Colors.blue),
                  SizedBox(
                    height: 40,
                  ),
//Widget paramostrar terminos y condiciones de uso de la App(falta hacer ajustes).
                  Text(
                    "Terminos y condiciones de uso",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
