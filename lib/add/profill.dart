import 'package:flutter/material.dart';
import 'package:yazevim/add/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yazevim/home2.dart';

class profill1 extends StatefulWidget {
  const profill1({Key? key}) : super(key: key);


  @override
  State<profill1> createState() => _profill1State();

}

class _profill1State extends State<profill1> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profilim"),
         centerTitle: true,
        actions: [
          IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>homee2()));}, icon: Icon(Icons.home))
        ],
        // kullanıcı giriş yaptığında profil sayfası burada yer alacak ve aynı şekilde buradan veri göndercek sunucuya
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Text("EV ilanını eklemek için dokun"),
              IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>UserPage()));}, icon: Icon(Icons.add_a_photo_outlined)),
            ],
          ),
          ),
         TextButton(onPressed: (){}, child: Text("Evlerim")),
         Padding(padding: EdgeInsets.all(60),
           child: Column (children: [
             Container(
               height: 250,
               width: 250,
               color: Colors.red,
             ),
           ],
           ),
          ),
        ],
      )
    );
  }
}
