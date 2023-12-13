import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  const PageTitle({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 80,),
              Text('Classify transaction', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
              SizedBox(height: 10,),
              Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 16, color: Colors.white),)
            ],
          ),
      ),
    );
  }
}