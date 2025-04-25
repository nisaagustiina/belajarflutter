import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({Key key}) : super(key: key);
  int totalSkor;
  Function reset;

  Hasil(this.totalSkor, this.reset);
  //Getter
  String get hasilText {
    String hasil = 'Anda berhasil';
    if (totalSkor <= 8) {
      hasil = 'Anda hebat!';
    } else if (totalSkor <= 12) {
      hasil = 'Wow';
    } else if (totalSkor <= 16) {
      hasil = 'Anda agak aneh';
    } else {
      hasil = 'Anda menang';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: reset,
            child: Text('Mulai lagi?'),
            style: TextButton.styleFrom(primary: Colors.blue),
          )
        ],
      ),
    );
  }
}
