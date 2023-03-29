import 'package:flutter/material.dart';
import 'package:flutter_laporan/field.dart';

class Laporan extends StatefulWidget {
  const Laporan({super.key});

  @override
  State<Laporan> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Laporan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.blue.shade600,
          icon: Icon(
            Icons.send_outlined,
            size: 25,
          ),
          label: Text(
            "Kirim Laporan",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        appBar: AppBar(
          title: Text("Laporan"),
          backgroundColor: Colors.blue.shade600,
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                height: 36,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red, border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Jangan Berikan Laporan Palsu",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Material(
                color: Colors.transparent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Container(
                  height: 620,
                  width: 100,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 241, 241, 241)),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.9, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(top: 15),
                          child: Text('Unggah Foto Bukti',
                              style: TextStyle(fontSize: 15)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Image.network(
                          "https://picsum.photos/seed/603/600",
                          width: 370,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      buildContent("Nama Pelapor", "Masukkan Nama Anda"),
                      buildContent("Telepon Pelapor", "Masukkan Nomor Anda"),
                      buildContent("Lokasi Kejadian", "Masukkan Lokasi Anda"),
                      buildContent("Waktu Kejadian", "**/**/****"),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: TextField(
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.black),
                            label: Text("Isi Laporan"),
                            hintText: "Masukkan Laporan Anda",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                          ),
                          maxLines: 6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
