import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yazevim/add/giris_kayit.dart';
import 'package:yazevim/home2.dart';


class kayitol extends StatefulWidget {
  const kayitol({Key? key}) : super(key: key);


  @override
  State<kayitol> createState() => _kayitolState();
}

class _kayitolState extends State<kayitol> {
  TextEditingController passWord1 = TextEditingController();
  TextEditingController passWord2 = TextEditingController();
  TextEditingController mailUser = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;
    double pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/resimler/yazevim.jpg",),fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(

                  ),),
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70.withOpacity(0.6),// renk ve saydamlık verir
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    width: pageWidth,
                      child: ListView(
                      children: [
                        Column(
                          children: [
                            Text(""),
                            Text("Kayıt Ol ", style: Theme.of(context).textTheme.headline6), // daha kalın yazmaya yarar
                            Padding(padding: EdgeInsets.all(50),
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: mailUser,
                                    decoration: InputDecoration(
                                        label: Text("E posta"),
                                        icon: Icon(Icons.mail)
                                    ),
                                  ),
                                  TextFormField(
                                    controller: passWord2,
                                    decoration: InputDecoration(
                                        label: Text("Parola"),
                                        icon: Icon(Icons.lock)
                                    ),
                                  ),
                                  TextFormField(
                                    controller: passWord1,
                                    decoration: InputDecoration(
                                        label: Text("Parola"),
                                        icon: Icon(Icons.lock)
                                    ),
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Row(
                                    children: [
                                      Expanded (child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>kayit()));}, child: Text("Geri")),
                                      ),
                                      Expanded (flex: 1, child: Container (),),
                                      Expanded(child: ElevatedButton(onPressed: ()async{
                                        if (passWord1.text == passWord2.text){
                                        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword
                                          (email: mailUser.text, password: passWord1.text);
                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>kayit()));}
                                      },
                                        child: Text("Kayıt Ol"),))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(

                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


