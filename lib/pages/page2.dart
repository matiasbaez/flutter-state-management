
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:state_management/controllers/user.controller.dart';
import 'package:state_management/models/models.dart';

class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {

    final userController = Get.find<UserController>();

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
              onPressed: () {
                final user = User(name: "Matias Baez", age: 26, professions: ["Fullstack developer"]);
                userController.loadUser(user);
                Get.snackbar(
                  'User updated',
                  'Go back to see the results',
                  colorText: Colors.white,
                  backgroundColor: Colors.blueGrey,
                  boxShadows: const [
                    BoxShadow( color: Colors.black38, blurRadius: 10 )
                  ]
                );
              },
              color: Colors.blue,
              child: const Text('Set user', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                userController.updateAge(25);
              },
              color: Colors.blue,
              child: const Text('Change age', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                userController.addProfession("Mobile developer");
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