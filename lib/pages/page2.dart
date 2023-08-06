
import 'package:flutter/material.dart';
import 'package:state_management/models/models.dart';
import 'package:state_management/services/user.dart';

class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (context, snapshot) {
            return snapshot.hasData
            ? Text('Nombre: ${snapshot.data?.name}')
            : const Text('Page 2');
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                final user = User(name: 'Matías Báez', age: 25);
                userService.setUser(user);
                // Navigator.pushReplacementNamed(context, 'page1');
              },
              color: Colors.blue,
              child: const Text('Set user', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                userService.updateAge(26);
                // Navigator.pushReplacementNamed(context, 'page1');
              },
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