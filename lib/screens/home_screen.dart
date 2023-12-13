import 'package:flutter/material.dart';
import 'package:flutter_diseno/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundScreen(),

          _HomeBody()
        ]
        ),
        bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable(),
        ]),
    );
  }
}