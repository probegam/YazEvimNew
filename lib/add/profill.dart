
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:yazevim/add/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yazevim/home2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;


class profill1 extends StatefulWidget {
  const profill1({Key? key}) : super(key: key);

  @override
  State<profill1> createState() => _profill1State();
}

class _profill1State extends State<profill1> {
  Future uploadFiles() async {
    final reference = FirebaseStorage.instance.ref('6diovGxKESO8qhxl0mwNaAPWpwf1/image.jpeg');
    final url = await reference.getDownloadURL();
    final response = await http.get(Uri.parse(url));
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("Profilim"),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>homee2()));}, icon: Icon(Icons.home))
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Text("EV ilanını eklemek için dokun"),
                  IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>UserPage()));
                      },
                      icon: Icon(Icons.add_a_photo_outlined)
                  ),
                ],
              ),
            ),
            TextButton(onPressed: (){}, child: Text("Evlerim")),
            Padding(
              padding: EdgeInsets.all(60),
              child: Column (
                children: [
                  Container(
                    child: Column(
                      children: [
                        FutureBuilder(
                            future: uploadFiles(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Image.network(
                                  snapshot.data!.request.url.toString(),
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                );
                              } else if (snapshot.hasError) {
                                return Text("Hata${snapshot.error}");
                              } else {
                                return Center(child: CircularProgressIndicator());
                              }
                            }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
