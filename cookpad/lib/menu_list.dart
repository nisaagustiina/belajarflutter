import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuListItem extends StatelessWidget {
  const MenuListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ListMenu(
              image:
                  "https://cdns.diadona.co.id/diadona.id/resized/664xauto//real/2020/01/02/4759/ilustrasi-soto-padang.jpg",
              judul: 'Bubur',
              subjudul: 'Learn view..',
            ),
            ListMenu(
                image:
                    "https://cdns.diadona.co.id/diadona.id/resized/664xauto//real/2020/01/02/4857/ilustrasi-sop-konro-.jpg",
                judul: 'Iga',
                subjudul: 'Learn view..'),
            ListMenu(
                image:
                    "https://cdns.diadona.co.id/diadona.id/resized/664xauto//real/2020/01/02/4766/ilustrasi-sate-lilit.jpg",
                judul: 'Sate',
                subjudul: 'Learn view..')
          ],
        ),
      ),
    );
  }
}

class ListMenu extends StatelessWidget {
  const ListMenu(
      {Key? key,
      required this.image,
      required this.judul,
      required this.subjudul})
      : super(key: key);

  final String image;
  final String judul;
  final String subjudul;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160.0,
        width: 300.0,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
              height: 160.0,
              width: 300.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(judul,
                      style: TextStyle(
                          color: Color.fromRGBO(246, 194, 77, 1),
                          fontSize: 24.0,
                          letterSpacing: 1.1)),
                  Text(
                    subjudul,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.1),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
