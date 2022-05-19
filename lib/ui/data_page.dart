import 'package:flutter/material.dart';
import 'package:tugas_individu_mobile_programming/ui/data_form.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Mahasiswa"), actions: [
        GestureDetector(
          child: Icon(Icons.add),
          onTap: () async {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DataForm()));
          },
        )
      ],
    ),
    body: ListView(
      children: [
        Card(
          child: ListTile(
            title: Text('19200891'),
            subtitle: Text('Biru Epa Damainingati'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('12153877'),
            subtitle: Text('Alkho Sulaiman Christie'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('12153878'),
            subtitle: Text('Akira Aeshy Ahsany'),
          ),
        ),
      ]
    ),
    );
  }
}
