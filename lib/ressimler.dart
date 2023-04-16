import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resimler extends StatefulWidget {
  const resimler({Key? key}) : super(key: key);

  @override
  State<resimler> createState() => _resimlerState();
}

class _resimlerState extends State<resimler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [

        Row(
          children: [
            Expanded(child: Column(
              children: [

                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
            Expanded(child: Column(
              children: [
                Image.asset("assets/resimler/indir.jpg"),
                Text(""),
                Text("Mersin.Susanoğlu.YapraklıKoy"),
              ],
            ),
                flex: 6),
            Expanded(child: Column(
              children: [
                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
          ],
        ),
        Row(
          children: [
            Expanded(child: Column(
              children: [

                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
            Expanded(child: Column(
              children: [
                Image.asset("assets/resimler/ki.jpg"),
                Text(""),
                Text("Mersin.KızKalesi.Sahil"),
              ],
            ),
                flex: 6),
            Expanded(child: Column(
              children: [
                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
          ],
        ),
        Row(
          children: [
            Expanded(child: Column(
              children: [

                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
            Expanded(child: Column(
              children: [
                Image.asset("assets/resimler/ts.jpg"),
                Text(""),
                Text("Mersin.Taşucu Sahil"),
              ],
            ),
                flex: 6),
            Expanded(child: Column(
              children: [
                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
          ],
        ),
        Row(
          children: [
            Expanded(child: Column(
              children: [

                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
            Expanded(child: Column(
              children: [
                Image.asset("assets/resimler/mr.jpg"),
                Text(""),
                Text("Mersin merkez"),
              ],
            ),
                flex: 6),
            Expanded(child: Column(
              children: [
                Text(""),
                Text(""),
              ],
            ),
                flex: 2),
          ],
        ),
      ],
      ),
          appBar: AppBar(
            title: Text("Gezilebilecek Yerler"),
            centerTitle: true,
            backgroundColor: Colors.greenAccent,

    ),
    );

  }
}
