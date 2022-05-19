import 'package:flutter/material.dart';

class DataDetail extends StatefulWidget {
  final String nimMahasiswa;
  final String namaMahasiswa;
  final int kodeMataKuliah;

  DataDetail(
      {required this.nimMahasiswa,
      required this.namaMahasiswa,
      required this.kodeMataKuliah});
  @override
  State<DataDetail> createState() => _DataDetailState();
}

class _DataDetailState extends State<DataDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Mahasiswa"),
      ),
      body: Column(children: [
        Text("Nim Mahasiswa : " + widget.nimMahasiswa),
        Text("Nama Mahasiswa : ${widget.namaMahasiswa}"),
        Text("Kode Mata Kuliah : ${widget.kodeMataKuliah.toString()}"),
      ],
      ),
    );
  }
}
