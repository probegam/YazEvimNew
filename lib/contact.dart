import 'package:flutter/material.dart';
class contacttt extends StatefulWidget {
  const contacttt({Key? key}) : super(key: key);

  @override
  State<contacttt> createState() => _contactttState();
}

class _contactttState extends State<contacttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yaz Evim İletişim"),
        centerTitle: true,
      ),
      body: Column(

        children: [

          Text ("ŞİKAYETLERİNİZİ VE GÖRÜŞLERİNİZİ BİZE İLETİŞİM BİLGİLERİ ÜZERİNDEN BİLDİREBİLİRSİNİZ!"),
          TextButton(style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 17),),), onPressed: () {}, child: Text('Tel : 05449637084'),),
          TextButton(style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 17),),), onPressed: () {}, child: Text('E posta: halilermeugurluel@icloud.com'),),
          TextButton(style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 17),),), onPressed: () {}, child: Text('Whatsapp : ----------'),),


        ],

      ),
    );
  }
}
