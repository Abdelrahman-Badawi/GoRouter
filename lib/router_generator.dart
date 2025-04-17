import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_project/app_routes.dart';
import 'package:navigation_project/first_screen.dart';
import 'package:navigation_project/second_secreen.dart';

class RouterGenerator {
  static GoRouter mainRoutingInOurApp = GoRouter(
    errorBuilder: (context, state) {
      return const Center(child: Text('This Route is not found'));
    },
    initialLocation: AppRoutes.firstScreen,
    routes: [
      GoRoute(
          path: AppRoutes.firstScreen,
          name: AppRoutes.firstScreen,
          builder: (context, state) => const FirstScreen()),
      GoRoute(
        path: AppRoutes.secondScreen + "/:id",
        name: AppRoutes.secondScreen,
        builder: (context, state) {
          String id = state.pathParameters["id"]!;
          debugPrint('The data send in the path: $id');
          ProductDetails productDetails = state.extra as ProductDetails;
          return SecondScreen(productDetails: productDetails);
        },
      )
    ],
  );
}
