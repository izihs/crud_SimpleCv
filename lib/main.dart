import 'package:alpha_cv/pages/home_page.dart';
import 'package:alpha_cv/widget/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//menjalankan fungsi main,
//mengembalikan sebuah method dari "runApp" berisi parameter MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData (primaryColor: primaryGreen),

      home: HomePages(),

      //menuju ke class HomePages
    );
  }
}
