import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_project/app_routes.dart';
import 'package:navigation_project/first_screen.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key, required this.productDetails});

  ProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('First Screen',
            style: TextStyle(color: Colors.orange, fontSize: 16)),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Second Screen',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.firstScreen);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                  'Go to first screen',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Data Recived throw arguments : ${productDetails.id} ${productDetails.title} ${productDetails.descraption}',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
