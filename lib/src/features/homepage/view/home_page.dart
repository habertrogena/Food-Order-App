import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/src/features/homepage/controller/home_page_controller.dart';

import '../../../constants/string.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // connect the view with the controller.
    final HomePageController homePageController = HomePageController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        centerTitle: true,
        title: Text(
          restaurantText,
          style: GoogleFonts.jetBrainsMono(
              fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: FutureBuilder(
          future: FirebaseDatabase.instance
              .ref()
              .child(
                  'https://console.firebase.google.com/u/0/project/food-order-app-b00aa/database/food-order-app-b00aa-default-rtdb/data/~2FRestaurant')
              .once(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text('loading okay'),
              );
            }
          }),
    );
  }
}
