import 'package:flutter/material.dart';

class Kritik extends StatefulWidget {
  const Kritik({Key? key}) : super(key: key);

  @override
  State<Kritik> createState() => _KritikState();
}

class _KritikState extends State<Kritik> {
  String kritik="";
  String nama="";
  String email="";
  final namaCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final kritikCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
 
  @override
  void dispose() {
    namaCtrl.dispose();
    emailCtrl.dispose();
    kritikCtrl.dispose();
    super.dispose();
  }

  Future<dynamic> CustomAlert(BuildContext context, String pesan1){
    return showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text("Success"),
          backgroundColor: Colors.white,
          content : Container(child: Column(children: [
            Text("Hi, $pesan1 terimakasih atas kritik dan sarannya"),
            Text("Kami akan berusaha semaksimal mungkin untuk terus memperbaiki aplikasi kami"),
            Text(""),
            Text(""),
            Text("Salam Hangat, Pembuat."),
          ],)),
          actions: [
            Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {Navigator.of(context).pop();}, child: Text("Back")),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 25,
                        margin: const EdgeInsets.only(
                          top: 5,),
                        child: const Center(child: Text("Menu Kritik & Saran",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),)),
                        ),
                      Inputtextfield(context, "Nama Lengkap", namaCtrl),
                      Inputtextfield(context, "Email", emailCtrl),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        margin: const EdgeInsets.only(
                          top: 30,
                          bottom: 35,
                        ),
                        child: TextFormField(
                          controller: kritikCtrl,
                          decoration:const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Kritik & Saran",
                            hintText: "Masukkan kritik/saran anda",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nama=namaCtrl.text;
                              email=emailCtrl.text;
                              kritik=kritikCtrl.text;
                            });
                            CustomAlert(context, nama);
                          }, 
                          child:const Text("Kirim"),
                          style: ElevatedButton.styleFrom(primary: Color(0xFF00D7FF)),
                          ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Column(
                          children: [
                            Text("Nama Lengkap: $nama"),
                            Text("Email: $email"),
                            Text("Kritik & Saran: $kritik"),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

Widget Inputtextfield(context, String txt,final isi) {
  return Container(
    width: MediaQuery.of(context).size.width / 1.2,
    height: 50,
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: TextField(
      controller: isi,
      decoration: InputDecoration(
        
        border: const OutlineInputBorder(),
        hintText: txt,
        fillColor: const Color(0xFFecf1f7),
        filled: true,
      ),
    ),
  );
}
