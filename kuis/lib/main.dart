import 'package:flutter/material.dart';

import './pertanyaan.dart';
import './jawaban.dart';
import './kuis.dart';
import './hasil.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({Key? key}) : super(key: key);
  var _soalIndex = 0;
  var totalSkor = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang akan kamu kunjungi?',
      'jawaban': [
        {'teks': 'Pegunungan', 'skor': 10},
        {'teks': 'Pantai', 'skor': 5},
        {'teks': 'Mall', 'skor': 3},
        {'teks': 'Hutan', 'skor': 2}
      ]
    },
    {
      'pertanyaan': 'Apa warna kesukaanmu?',
      'jawaban': [
        {'teks': 'Hitam', 'skor': 10},
        {'teks': 'Merah', 'skor': 5},
        {'teks': 'Biru', 'skor': 3},
        {'teks': 'Putih', 'skor': 2}
      ]
    },
    {
      'pertanyaan': 'Apa hobimu?',
      'jawaban': [
        {'teks': 'Bersepeda', 'skor': 10},
        {'teks': 'Membaca', 'skor': 5},
        {'teks': 'Ngoding', 'skor': 3},
        {'teks': 'Menari', 'skor': 2}
      ]
    },
  ];

  void reset() {
    setState(() {
      _soalIndex = 0;
      totalSkor = 0;
    });
  }

  void _jawaban(int skor) {
    totalSkor += skor;

    setState(() {
      _soalIndex += 1;
    });

    if (_soalIndex < pertanyaan.length) {
      print('masih ada soal');
    } else {
      print('soal abis');
    }
    print(_soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi Kuis'),
          ),
          body: _soalIndex < pertanyaan.length
              ? Kuis(
                  jawaban: _jawaban,
                  pertanyaan: pertanyaan,
                  soalIndex: _soalIndex,
                )
              : Hasil(totalSkor, reset)),
    );
  }
}
