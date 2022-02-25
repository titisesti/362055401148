import 'package:flutter/material.dart';
import 'package:utstitisestirahayu/notification.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(0),
      color: Colors.white10,
      child: Column(children: <Widget>[
        Positioned(
          top: 100,
          left: 590,
          child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image: DecorationImage(image: AssetImage('assets/images/poliwangi.png'), fit: BoxFit.cover),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Selamat Datang, Silahkan Masuk",
          style: TextStyle(fontSize: 20, color: Colors.lightBlue),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                prefixIcon: Icon(
                  Icons.person,
                  size: 40,
                ),
                hintText: "Masukkan Username",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black))),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87)),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 40,
                ),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black))),
        Positioned(
          top: 700,
          right: 300,
          left: 300,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Text('Masuk'),
          ),
        ),
      ]),
    ));
  }
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         backgroundColor: Colors.lightBlue,
//         title: Text("Notification"),
//         bottom: TabBar(controller: controller, tabs: <Widget>[
//           Tab(
//             icon: new Icon(Icons.home),
//           ),
//           Tab(
//             icon: new Icon(Icons.notifications),
//           ),
//         ]),
//       ),
//     );
//   }
// }
