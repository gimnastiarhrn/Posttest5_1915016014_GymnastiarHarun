import 'package:flutter/material.dart';
import 'package:posttest5/Detailspage.dart';
import 'package:posttest5/Kritik.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List<BottomNavigationBarItem> bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.note_add),
      label: "Suggestion",
    ),
  ];
  int _index = 1;

  List<Widget> tabBody = [
    Container(color: Colors.white),
    Page1(),
    Kritik(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: Text("MyHome (Gymnastiar)"),
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        foregroundColor: Colors.black,
      ),
      body: tabBody.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItems,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height + 160,
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 0, 162, 255),
                              Color.fromARGB(255, 66, 45, 255),
                            ]),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 10,
                            spreadRadius: 0.2,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: MediaQuery.of(context).size.height / 17,
                              left: MediaQuery.of(context).size.width / 7,
                              child: Image.asset("smarthome.png")),
                          Positioned(
                            width: MediaQuery.of(context).size.width / 1.2,
                            top: MediaQuery.of(context).size.height / 17,
                            child: Center(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                width: MediaQuery.of(context).size.width / 200,
                                height: MediaQuery.of(context).size.height / 11,
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height / 15,
                            left: MediaQuery.of(context).size.width / 1.9,
                            child: const Text(
                              "All Devices",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height / 9,
                            left: MediaQuery.of(context).size.width / 1.9,
                            child: const Text(
                              "69 devices",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(18),
                    child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.all(30),
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (_) {
                                  return Detailspage();
                                },
                              ));
                            },
                            child: MenuCon(
                                "bedroom.png", "Bedroom", "13 device", context),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (_) {
                                  return Detailspage();
                                },
                              ));
                            },
                            child: MenuCon("livingroom.png", "Livingroom",
                                "12 device", context),
                          ),
                          MenuCon(
                              "bathroom.png", "Bathroom", "8 device", context),
                          MenuCon(
                              "kitchen.png", "Kitchen", "18 device", context),
                          MenuCon("storeroom.png", "Store room", "6 device",
                              context),
                          MenuCon("studyroom.png", "Studyroom", "10 device",
                              context),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget MenuCon(String file, String judul, String deskripsi, context) {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 6,
            spreadRadius: 0.1,
            color: Colors.grey,
          ),
        ]),
    child: Stack(children: [
      Positioned(
        top: 50,
        width: MediaQuery.of(context).size.width / 2.5,
        child: Center(
          child: Image.asset(
            file,
            alignment: Alignment.center,
          ),
        ),
      ),
      Positioned(
        top: 140,
        width: MediaQuery.of(context).size.width / 2.5,
        child: Center(
          child: Text(
            judul,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
      Positioned(
        top: 160,
        width: MediaQuery.of(context).size.width / 2.5,
        child: Center(
          child: Text(
            deskripsi,
            style: const TextStyle(
              color: Color.fromARGB(255, 41, 41, 41),
              fontWeight: FontWeight.normal,
              fontSize: 12,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    ]),
  );
}
