import 'package:flutter/material.dart';
import 'package:flutter_custom_slide_puzzle/widgets/AnalyticsRow.dart';
import 'package:flutter_custom_slide_puzzle/widgets/PuzzleGrid.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //Ekranda gözükecek sayılar
  var sayilar = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  //kaç hamle kullandığımızı tutan değişken
  var hareket = 0;

  @override
  void initState() {
    super.initState();
    sayilar.shuffle(); //Uygulama başlangıcında sayı dizisini karıştıran metod
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          //başlık
          "Puzzle Test",
          style: TextStyle(fontSize: 32),
        ),
        actions: [
          IconButton(
            //karıştır tuşu
            onPressed: () {
              setState(() {
                sayilar.shuffle();
                hareket = 0;
                // secondsPassed = 0;
                // isActive = false;
              });
            },
            icon: Icon(Icons.loop),
          ),
        ],
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: ListView(
        //Hamle sayısı zaman ve Puzzle'ın bulunduğu yer
        children: [
          AnalyticsRow(hareket: hareket), //analiz sırası
          PuzzleGrid(
            //Puzzle widget'ı
            sayilar: sayilar,
          ),
        ],
      ),
    );
  }
}
