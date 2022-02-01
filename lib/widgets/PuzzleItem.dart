import 'package:flutter/material.dart';

class PuzzleItem extends StatelessWidget {
  const PuzzleItem({
    Key? key,
    required this.sayilar,
    required this.index,
    required this.clickItem,
  }) : super(key: key);

  final List<int> sayilar;
  final int index;
  final Function() clickItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      //Gölge ve padding ayarlaması için card
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: InkWell(
        //basınca su damlası efektini sağlıyor
        onTap: clickItem, //tıklayınca ne olacağını buraya iletiyor
        child: Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: Text(
            //puzzle elemanlarının içerisinde bulunacak yazı
            "${sayilar[index]}",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
  }
}
