import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:yazevim/add/giris_kayit.dart';
import 'package:yazevim/contact.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yazevim/ressimler.dart';
import 'home2.dart';

class statusService {
  Stream <QuerySnapshot> getStatus(){
   var ref = FirebaseFirestore.instance.collection("yazevim").snapshots();
    return ref;
  }
  Future<void> removeStatus(String docId){
    var ref = FirebaseFirestore.instance.collection("yazevim").doc(docId).delete();
    return ref;
  }
}
