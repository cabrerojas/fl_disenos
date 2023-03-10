import 'package:fl_disenos/widgets/backgound.dart';
import 'package:fl_disenos/widgets/card_table.dart';
import 'package:fl_disenos/widgets/custom_bottom_navigation.dart';
import 'package:fl_disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Backgound(),
          _HomeBody(),
        ],
      ),
      // bottomNavigationBar: ,
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // Titulos
          PageTitle(),
          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}
