import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:yazevim/add/giris_kayit.dart';
import 'package:yazevim/contact.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yazevim/ressimler.dart';
import 'package:yazevim/status_service.dart';



class homee2 extends StatefulWidget {
  const homee2({Key? key}) : super(key: key);

  @override
  State<homee2> createState() => _homee2State();
}
class _homee2State extends State<homee2> {
  @override
  Widget build(BuildContext context) {
    var listItem= [
    Row(
      children: [
        Container(
          color: Colors.yellowAccent,
          height: 130,
          width: 130,
        ),
      ],
    ),
      Row(
        children: [
          Container(
            color: Colors.red,
            height: 130,
            width: 130,
          ),
        ],
      ),];
    var appbarbutonlar=  [
    IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>contacttt()));}, icon: const Icon(Icons.currency_lira)),
    IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>resimler()));}, icon: const Icon(Icons.add_a_photo)),
    IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>kayit()));}, icon: const Icon(Icons.login)),
    ];
    return Scaffold(

      appBar:  AppBar ( title: Text("Yaz Evim"),
        backgroundColor: Colors.green,
        centerTitle: true,
          actions: appbarbutonlar,
      ),


    );
  }
}
