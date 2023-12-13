import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(Icons.pie_chart, 'General', Colors.blue),
          _SingleCard(Icons.car_rental, 'Transport', Colors.purple)
        ]),
        TableRow(children: [
          _SingleCard(Icons.shopping_bag, 'Shopping', Colors.pinkAccent),
          _SingleCard(Icons.list_alt_outlined, 'Bills', Colors.orangeAccent)
        ]),
        TableRow(children: [
          _SingleCard(Icons.movie_filter_outlined, 'Entertainment', Colors.cyan),
          _SingleCard(Icons.local_grocery_store, 'Grocery', Colors.green)
        ]),
        TableRow(children: [
          _SingleCard(Icons.house_outlined, 'House', Colors.indigoAccent),
          _SingleCard(Icons.cast_for_education_outlined, 'Education', Colors.blueGrey)
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const _SingleCard(this.icon, this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5, sigmaY: 5
          ),
          child: Container(
            
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Text(
                text,
                style: TextStyle(color: color),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
