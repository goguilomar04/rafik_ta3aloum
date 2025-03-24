import 'package:flutter/material.dart';
//                                            P4
class P4Screen extends StatelessWidget {
  const P4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Rectangle.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                // Action à exécuter lors du clic
                print("Activez la camera SVP !");
              },
              child: Image.asset(
                'assets/cam.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
