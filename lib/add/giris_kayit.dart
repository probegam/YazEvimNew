import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yazevim/add/kayit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yazevim/add/profill.dart';
import 'package:yazevim/add/user.dart';
import 'package:yazevim/home2.dart';




class kayit extends StatefulWidget {
  const kayit({Key? key}) : super(key: key);

  @override
  State<kayit> createState() => _kayitState();
}

class _kayitState extends State<kayit> {
  TextEditingController passWord = TextEditingController();
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
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    width: pageWidth,
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>homee2()));}, icon: Icon(Icons.arrow_back)),
                                Expanded (flex: 1, child: Container (),),
                                Text("Kayıt Ol & Giriş Yap", style: Theme.of(context).textTheme.headline6),
                                Expanded (flex: 1, child: Container (),),
                                Expanded (flex: 1, child: Container (),),
                              ],
                            ),
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
                                    controller: passWord,
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
                                      Expanded (child: ElevatedButton(onPressed: ()async{{//try eksik yazınca hata geliuor
                                        final credential = await FirebaseAuth
                                            .instance.signInWithEmailAndPassword(
                                          email: mailUser.text,
                                          password: passWord.text,);
                                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context )=> profill1()),(route) => false);
                                      }
                                      }, child: Text("Giriş")),
                                      ),
                                      Expanded (flex: 1, child: Container (),),
                                      Expanded(child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>kayitol()));}, child: Text("Kayıt Ol"),))
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

                )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

