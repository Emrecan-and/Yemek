import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("BUGUN NE YESEM?",
          style: TextStyle(color: Colors.black),),
        ),
        body:YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNO=1;
  int yemekNo=1;
  int tatliNo=1;
  List<String>corbaAdlari=["Mercimek ","Tarhana","Tavuk Suyu","Düğün Çorbası","Yoğurt Çorbası"];
  List<String>yemekAdlari=["Karnıyarık","Mantı","Kuru Fasulye","İçli Köfte","Izgara Balık"];
  List<String>tatliAdlari=["Kadayıf","Baklava","Sütlaç","Kazandibi","Dondurma"];
  void yemekBelirle() {
    setState(() {
      corbaNO=Random().nextInt(5)+1;
      tatliNo=Random().nextInt(5)+1;
      yemekNo=Random().nextInt(5)+1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
            children: <Widget> [
              Expanded(flex:1,child:

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 50),
                 child: FlatButton(
                      highlightColor: Colors.white,
                      splashColor: Colors.white,
                     onPressed:yemekBelirle,
                     child:
                 Image.asset('images/corba_$corbaNO.jpg')),
               )),
              Text(corbaAdlari[corbaNO-1],style: TextStyle(fontSize:20,color: Colors.black),),
              Expanded(flex:1,child:
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal:50),
                child: FlatButton(
                  splashColor: Colors.white,
                  highlightColor: Colors.white,
                  onPressed:yemekBelirle,
                    child: Image.asset('images/yemek_$yemekNo.jpg')),
              )),
              Text(yemekAdlari[yemekNo-1],style: TextStyle(fontSize:20,color: Colors.black),),
              Expanded(flex: 1,child:
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal:50),
                child: FlatButton(
                  splashColor:Colors.white,
                    highlightColor: Colors.white,
                    onPressed:yemekBelirle,
                    child:
                  Image.asset('images/tatli_$tatliNo.jpg')),
              )),
              Text(tatliAdlari[tatliNo-1],style: TextStyle(fontSize:20,color: Colors.black),),
            ],
          ),
    );
  }
}

