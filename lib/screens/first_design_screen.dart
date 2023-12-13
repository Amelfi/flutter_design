import 'package:flutter/material.dart';

class FirstDesingScreen extends StatelessWidget {
  const FirstDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Image(image: AssetImage('assets/landscape.webp')),
        Title(),
        NavIcons(),
        TextInfo()
      ]),
    );
  }
}

class TextInfo extends StatelessWidget {
  const TextInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: const Text(
          'Lake Oeschinen lies at the foot of the blüemlisalp in the Bernese Alps. Situated 1578 meteres above sea level, it is one of the larger Alpine Lake.'),
    );
  }
}

class NavIcons extends StatelessWidget {
  const NavIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomButton(icon: Icons.call, text: 'CALL'),
        CustomButton(icon: Icons.place_rounded, text: 'ROUTE'),
        CustomButton(icon: Icons.share, text: 'SHARE'),
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue.shade400),
        Text(
          text,
          style: TextStyle(color: Colors.blue.shade400),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}
