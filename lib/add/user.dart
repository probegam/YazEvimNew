import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:yazevim/home2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);
  @override
  State createState() => _UserPageState();
}
class _UserPageState extends State<UserPage> {
  TextEditingController name1 = TextEditingController();
  TextEditingController call1 = TextEditingController();
  TextEditingController map1 = TextEditingController();
  TextEditingController bina = TextEditingController();
  TextEditingController oda = TextEditingController();
  TextEditingController yorum = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  String? uid;
  void inputData() async{
    final User? user = auth.currentUser;
    uid = user?.uid;
    print(uid);
    // here you write the codes to input the data into firestore
  }
  final picker = ImagePicker();
  File? file;
  Future getImage()async{
    //final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    final pickedFilee = await picker.pickImage(source: ImageSource.camera);
    if (pickedFilee != null) {
     file = File(pickedFilee.path);
     uploadImage(File(pickedFilee.path));
    }
  }
  final picker2 = ImagePicker();
  File? file2;
  Future getImage2()async{
     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
     //final pickedFilee = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      file = File(pickedFile.path);
      uploadImage(File(pickedFile.path));
    }
  }
  Future uploadImage(File image)async{
    final ref = FirebaseStorage.instance.ref("$uid/${image.hashCode}");
    ref.putFile(File(image.path));
  }
  @override
  void initState() {
    super.initState();
    inputData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İlan ver"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const homee2()));
            },
            icon: const Icon(Icons.home),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: [

            TextButton(
              onPressed: () async {getImage();},
              child: const Text("Bir Fotoğraf Dosyası Seçiniz"),
            ),
            Row(
              children: [
                Expanded(

                  child: IconButton(
                    onPressed: ()  {
                      getImage();
                    },
                    icon: const Icon(Icons.add_a_photo_outlined),
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: ()  {
                      getImage2();
                    },
                    icon: const Icon(Icons.image),
                    color: Colors.blue,
                  ),
                ),
              ],

            ),
            TextFormField(
              controller: name1,
              decoration: InputDecoration(
                labelText: "İsminiz",
                icon: const Icon(Icons.person),
                iconColor: Colors.red,
              ),
            ),
            TextFormField(
              controller: call1,
              decoration: InputDecoration(
                labelText: "İletişim Numaranız",
                icon: const Icon(Icons.call),
                iconColor: Colors.blue,
              ),
            ),
            TextFormField(
              controller: map1,
              decoration: InputDecoration(
                iconColor: Colors.amber,
                icon: const Icon(Icons.map) ,
                labelText: 'Şehir :'   + " MERSİN için 3 noktadan seçiniz!",
                suffixIcon: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return {'Susanoğlu', 'Silifke', 'Taş ucu', "Kız Kalesi", "Erdemli", "Mezitli" , "Mersin"}.map((String choice) {
                      return PopupMenuItem(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                  onSelected: (String value) {
                    // seçilen değeri kullanın
                  },
                ),
              ),
            ),
            TextFormField(
              controller: bina,
              decoration: InputDecoration(
                labelText: "Bina Yaşı",
                icon: const Icon(Icons.home),
                iconColor: Colors.deepOrange,
              ),
            ),
            TextFormField(
              controller: oda,
              decoration: InputDecoration(
                labelText: "Kaç Odalı",
                icon: const Icon(Icons.holiday_village),
                iconColor: Colors.brown,
              ),
            ),
            TextFormField(
              controller: yorum,
              decoration: InputDecoration(
                labelText:
                "Klima-Dolap-Televizyon vb.. açıklamalar yazın",
                icon: const Icon(Icons.add),
                iconColor: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () async {
                      final firestore = FirebaseFirestore.instance;
                      CollectionReference evilanColactionRef = firestore.collection("evilan");
                      await evilanColactionRef.add({
                        "issim": name1.text,
                        "İletişim": call1.text,
                        "Konum": map1.text,
                        "Bina yaşı": bina.text,
                        "Oda Sayısı": oda.text,
                        "Ev sahibinin ilan açıklaması": yorum.text,
                        "uid": uid!
                      });
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.done_outline),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


