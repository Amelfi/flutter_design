import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {

  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff74E9CC),
              Color(0xff50C2DD),
            
            ]) ),
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: const [
            Page1(),
            Page2()
            ]
          ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Background(),
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return  SafeArea(
      bottom: false,
      child: Column(
        
        children: [
          // const SizedBox(height: 50,),
          const Text('11', style: textStyle,),
          const Text('Miércoles', style: textStyle, ),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      color: const Color(0xff50C2DD),
      child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50C2DD),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const  Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
          onPressed: (){}, 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30),),
          )
          ),
      )
    );
  }
}