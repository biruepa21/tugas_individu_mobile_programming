import 'package:flutter/material.dart';
import 'package:tugas_individu_mobile_programming/ui/data_form.dart';
import 'package:tugas_individu_mobile_programming/ui/data_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const DataPage(),
    );
  }
}
