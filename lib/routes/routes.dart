import 'package:credeuan/pages/credepdf_page.dart';
import 'package:credeuan/pages/qr_page.dart';
import 'package:flutter/material.dart';

//My imports
import 'package:credeuan/pages/home_page.dart';
import 'package:credeuan/pages/login_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/login': (_) => LoginPage(),
  '/home': (_) => HomePage(),
  '/qr': (_) => QrPage(),
  '/pdf': (_) => CredePdfPage(),
};
