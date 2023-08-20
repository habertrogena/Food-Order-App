// homepage controller
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePageController {
  // final Database database = Database();

  // Database reference to be used for accessing data from firestore db.
  final FirebaseDatabase db = FirebaseDatabase.instance;
  // to read or write data i need an instanstance of database refference
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  // create a method that will fetch data from the firebase database
  // and return it as list
  //of maps, this is done by using streambuilder widget which takes in 2 parameters
  Future<String> getData() async {
    final FirebaseDatabase db = FirebaseDatabase.instance;
    List _data = [];
    return 'hello world';
  }
  // getData() {
  //   print('hello world');
  // }
}
