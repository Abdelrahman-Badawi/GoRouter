import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_project/app_routes.dart';
import 'package:navigation_project/second_secreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('First Screen',
            style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'First Screen',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.secondScreen,
                pathParameters: {"id": "200"},
                    extra: ProductDetails(
                        id: 20,
                        title: 'Is this',
                        descraption: 'the second screen is succesed'));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'Go to Second screen',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetails {
  int id;
  String title;
  String descraption;
  ProductDetails(
      {required this.id, required this.title, required this.descraption});
}
