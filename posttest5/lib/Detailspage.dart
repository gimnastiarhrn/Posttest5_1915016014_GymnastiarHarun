import 'package:flutter/material.dart';
import 'package:posttest5/Kritik.dart';
import 'package:posttest5/Mainpage.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({Key? key}) : super(key: key);

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  final List<Widget> tabBody = [
    Details1(),
    Details2(),
    Details3()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          appBar: AppBar(
            title: Text("MyHome (Gymnastiar)"),
            backgroundColor: Color.fromARGB(255, 245, 245, 245),
            foregroundColor: Colors.black,
            bottom: const TabBar(tabs: [
              Tab(
                  child: Text(
                "Lightning",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),
              )),
              Tab(
                  child: Text(
                "Cooling",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),
              )),
              Tab(
                  child: Text(
                "Security",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),
              )),
            ]),
          ),
          body: TabBarView(children: tabBody),
        ),
      ),
    );
  }
}

class Details1 extends StatelessWidget {
  const Details1({Key? key}) : super(key: key);
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
                              child: Image.asset("light.png")),
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
                              "Lightning Devices",
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
                              "5 devices",
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
                    child: ListView(children: [
                      MenuList(context, "Lampu 1"),
                      MenuList(context, "Lampu 2"),
                      MenuList(context, "Lampu Belajar"),
                      MenuList(context, "Lampu Tidur"),
                      MenuList(context, "LED Strip RGB"),
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

class Details2 extends StatelessWidget {
  const Details2({Key? key}) : super(key: key);
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
                              child: Image.asset("cooling.png")),
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
                              "Cooling Devices",
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
                              "3 devices",
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
                    child: ListView(children: [
                      MenuList(context, "Air Conditioner"),
                      MenuList(context, "Kipas besar"),
                      MenuList(context, "Kipas kecil"),
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

class Details3 extends StatelessWidget {
  const Details3({Key? key}) : super(key: key);
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
                              child: Image.asset("secure.png")),
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
                              "Security Devices",
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
                              "5 devices",
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
                    child: ListView(children: [
                      MenuList(context, "CCTV"),
                      MenuList(context, "Sensor maling"),
                      MenuList(context, "Sensor asap"),
                      MenuList(context, "Lock door"),
                      MenuList(context, "Lock window"),
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
Widget MenuList(context, String txt) {
  return Container(
    width: MediaQuery.of(context).size.width / 1.1,
    height: MediaQuery.of(context).size.height / 15,
    margin: EdgeInsets.all(5),
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
        top: MediaQuery.of(context).size.height / 45,
        left: 20,
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            letterSpacing: 1.5,
          ),
        ),
      ),
      Positioned(
        top: 2,
        right: 10,
        child: ToggleSwitch(
          minWidth: 90.0,
          cornerRadius: 20.0,
          activeBgColors: [
            [Colors.blue],
            [Colors.black.withOpacity(0.5)]
          ],
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey,
          inactiveFgColor: Colors.white,
          initialLabelIndex: 1,
          totalSwitches: 2,
          labels: ['On', 'Off'],
          radiusStyle: true,
          onToggle: (index) {
            print('switched to: $index');
          },
        ),
      ),
    ]),
  );
}
