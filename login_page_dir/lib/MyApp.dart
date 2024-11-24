

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'App_Controler.dart';
import 'Login_Page.dart';



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder( animation: AppControler.instance,builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo,brightness: AppControler.instance.dartTheme ? Brightness.dark : Brightness.light),
        home: LoginPage(),
      );
    }
    );
  }
}