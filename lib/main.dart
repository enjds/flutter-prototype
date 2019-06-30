import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginScreen(),
        '/contact-us': (context) => ContactUsScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/policy-list': (context) => PolicyListScreen(),
        '/policy-detail': (context) => PolicyDetailScreen(),

      },
      theme: ThemeData(
        fontFamily: 'Noto Sans',
        textTheme: TextTheme(
            body1: TextStyle(fontSize: 18),
            body2: TextStyle(fontSize: 16, color: Colors.red),
            button: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            headline: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        buttonTheme: ButtonThemeData(
          buttonColor: Color.fromRGBO(234, 171, 0, 1),
        ),
        primaryColor: Color.fromRGBO(234, 171, 0, 1),
      ),
    );
  }
}
