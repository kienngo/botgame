import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CollectionReference users = FirebaseFirestore.instance.collection('user');

  Future<void> getListUser() async {
    const markers = [];
    await users.get().then((snapshot) {
      snapshot.docs.forEach((doc) {
        print(doc["username"]);
      });
    });
    return markers;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              Text(
                'Lựa chọn game',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    height: 50.0,
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('KU 3D'),
                  ),
                  MaterialButton(
                    height: 50.0,
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('KUCASINO'),
                  ),
                  MaterialButton(
                    height: 50.0,
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('SUNWIN'),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              Text(
                'Kích hoạt tài khoản',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nhập số điện thoại tìm kiếm",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black12, width: 1.0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black12, width: 1.0),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Expanded(
                  child: ListView(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('abc'),
                                Text('0321456987'),
                                Text('afjlasdf')
                              ],
                            ),
                            MaterialButton(
                              height: 50.0,
                              color: Colors.tealAccent,
                              textColor: Colors.white,
                              onPressed: () {},
                              child: Text('Kích hoạt'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('abc'),
                                Text('0321456987'),
                                Text('afjlasdf')
                              ],
                            ),
                            MaterialButton(
                              height: 50.0,
                              color: Colors.tealAccent,
                              textColor: Colors.white,
                              onPressed: () {},
                              child: Text('Kích hoạt'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
