import 'package:flutter/material.dart';
import 'package:flutter_custom_slide_puzzle/widgets/PuzzleItem.dart';

class PuzzleGrid extends StatelessWidget {
  const PuzzleGrid({
    Key? key,
    required this.sayilar,
    required this.click,
  }) : super(key: key);

  final List<int> sayilar;
  final Function click;

  @override
  Widget build(BuildContext context) {
    return Column(
      //Sütun içerisinde puzzle yapısı(puzzle görünümünün sabit kalmasını sağlıyor)
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          //500'e 500'lük kare
          dimension: 500,
          child: GridView.builder(
            //Grid oluşturucu
            physics: NeverScrollableScrollPhysics(), //kaymamasını sağlıyor
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4), // Sütun sayısı 4
            itemCount: sayilar
                .length, //kaç tane eleman olacağı sayilar dizisinden çekiliyor
            itemBuilder: (context, index) => sayilar[index] ==
                    0 // '0' elemanını boş kare olarak yazdırma koşulu
                ? SizedBox.shrink()
                : PuzzleItem(
                    //Her bir puzzle elemanı
                    sayilar: sayilar,
                    index: index,
                    clickItem: () {
                      click(index);
                    }, //tıklayınca ne olacak
                  ),
          ),
        ),
      ],
    );
  }
}
