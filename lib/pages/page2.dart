
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/models.dart';

import 'package:state_management/services/services.dart';

class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: userService.existsUser
          ? Text('Nombre: ${userService.user?.name}', style: const TextStyle( color: Colors.white ) )
          : const Text('Page 2', style: TextStyle( color: Colors.white ) ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                userService.user = User(name: 'Matias Báez', age: 26, professions: ['Fullstack Developer', 'Devops']);
              },
              color: Colors.blue,
              child: const Text('Set user', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                userService.changeAge(25);
              },
              color: Colors.blue,
              child: const Text('Change age', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                userService.addProfession();
              },
              color: Colors.blue,
              child: const Text('Add profession', style: TextStyle( color: Colors.white )),
            ),
          ],
        ),
      ),
    );
  }
}