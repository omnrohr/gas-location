import 'package:flutter/material.dart';
import 'package:gas_project/components/custom_bottom_nav_bar.dart';
import 'package:gas_project/enums.dart';
import './components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
