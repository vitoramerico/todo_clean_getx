import 'package:flutter/material.dart';

import '../customer_add_controller.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final CustomerAddController controller;

  const BottomNavigationBarWidget({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.pageController,
      builder: (context, child) {
        return BottomNavigationBar(
          onTap: controller.changePage,
          currentIndex: controller.currentPage,
          items: [
            const BottomNavigationBarItem(
              icon: const Icon(Icons.assignment_ind),
              label: 'Dados',
            ),
            const BottomNavigationBarItem(
              icon: const Icon(Icons.location_on),
              label: 'Endereço',
            ),
          ],
        );
      },
    );
  }
}
