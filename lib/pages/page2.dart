
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1', style: TextStyle( color: Colors.white ) ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text('Set user', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text('Change age', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text('Add profession', style: TextStyle( color: Colors.white )),
            ),
          ],
        ),
      ),
    );
  }
}