import 'package:flutter/material.dart';

//My imports
import 'package:credencialdigital/pages/credepdf_page.dart';
import 'package:credencialdigital/pages/home_page.dart';
import 'package:credencialdigital/pages/login_page.dart';
import 'package:credencialdigital/pages/qr_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/login': (_) => LoginPage(),
  '/home': (_) => HomePage(),
  '/qr': (_) => QrPage(),
  '/pdf': (_) => CredePdfPage(),
};
