import 'package:flutter/material.dart';
import 'package:posttest5/Mainpage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: ListView(
        children: [
          Column(
            children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              padding: EdgeInsets.only(top: 80),
              alignment: Alignment.topCenter,
              child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 1.0),
                        child: Text("Smart Home UI",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.height/15)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 1.0, bottom: 10.0),
                          child: Text("Easily Control Your Home",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: MediaQuery.of(context).size.height/35))),
                    ]),
              ), 
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/home.png"),
                scale: 0.6,
                alignment: Alignment.center,
                ),
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 66, 45, 255),
                Color(0xFF00D7FF),
              ]),
                boxShadow: [
                  BoxShadow(
                  offset: Offset(3,3),
                  blurRadius: 10,
                  spreadRadius: 0.2,
                  color: Color.fromARGB(255, 20, 20, 20),
                ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )
                ),
            ),
            Container( 
              width:MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 12,
              margin: const EdgeInsets.only(
                top: 40
              ),
              alignment: Alignment.center,
              child: 
              Text(
                "Login",
                style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height/30)),
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 111, 233, 255),
              border: Border.all(
                color: Colors.black.withOpacity(0.4),
                width: 3,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              boxShadow: const [
                  BoxShadow(
                  offset: Offset(0,3),
                  blurRadius: 5,
                  spreadRadius: 0.2,
                  color: Color.fromARGB(255, 32, 68, 75),
                ),
                ],
              ), 
            ),
            Container( 
              width:MediaQuery.of(context).size.width / 2.3,
              height: MediaQuery.of(context).size.height / 13,
              margin: const EdgeInsets.only(
                top: 20
              ),
              alignment: Alignment.center,
              child: 
              Text(
                "SignUp",
                style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height/40)),
              decoration:  BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 240),
              border: Border.all(
                color: Colors.black.withOpacity(0.5),
                width: 3,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: const [
                  BoxShadow(
                  offset: Offset(0,3),
                  blurRadius: 10,
                  spreadRadius: 0.2,
                  color: Color.fromARGB(255, 124, 124, 124),
                ),
                ],
              ), 
            ),
            TextButton(
          child: const Text("Login as guest"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) {
                return Mainpage();
              },
            ));
          },
        ),
            ]),
        ],
      ),
      );
  }
}