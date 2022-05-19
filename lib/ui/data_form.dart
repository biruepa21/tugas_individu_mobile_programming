import 'package:flutter/material.dart';
import 'package:tugas_individu_mobile_programming/ui/data_detail.dart';

class DataForm extends StatefulWidget {
  const DataForm({Key? key}) : super(key: key);

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  final _nimMahasiswaTextBoxController = TextEditingController();
  final _namaMahasiswaTextBoxController = TextEditingController();
  final _kodeMataKuliahTextBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxNimMahasiswa(),
            _textboxNamaMahasiswa(),
            _textboxKodeMataKuliah(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNimMahasiswa() {
    return TextField(
      decoration: InputDecoration(labelText: "Nim Mahasiswa"),
      controller: _nimMahasiswaTextBoxController,
    );
  }

  _textboxNamaMahasiswa() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Mahasiswa"),
      controller: _namaMahasiswaTextBoxController,
    );
  }

  _textboxKodeMataKuliah() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Mata Kuliah"),
      controller: _kodeMataKuliahTextBoxController,
    );
  }

  _tombolSimpan() {
    return RaisedButton(
        child: Text('Simpan'),
        onPressed: () {
          String nim_mahasiswa = _nimMahasiswaTextBoxController.text;
          String nama_mahasiswa = _namaMahasiswaTextBoxController.text;
          int kode_matakuliah =
              int.parse(_kodeMataKuliahTextBoxController.text);

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataDetail(
                    nimMahasiswa: nim_mahasiswa,
                    namaMahasiswa: nama_mahasiswa,
                    kodeMataKuliah: kode_matakuliah,
                  )));
        });
  }
}
