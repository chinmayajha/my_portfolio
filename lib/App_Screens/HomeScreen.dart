import 'package:flutter/material.dart';
import 'EditScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EditScreen()));
            },
            child: Ink.image(
              image: const NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/2921/2921222.png'),
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            )));
  }
}
