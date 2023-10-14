
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/controllers/user.controller.dart';
import 'package:state_management/models/models.dart';

class Page1 extends StatelessWidget {

  const Page1({super.key});

  @override
  Widget build(BuildContext context) {

    // inject dependency
    final userCtroller = Get.put( UserController() );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1', style: TextStyle( color: Colors.white ) ),
        backgroundColor: Colors.blue,
      ),
      body: Obx( () => userCtroller.existsUser.value
        ? _UserInfo( user: userCtroller.user.value )
        : const Center( child: Text("No hay información del usuario") )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('page2'),
        child: const Icon(Icons.accessibility_new),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {

  final User user;

  const _UserInfo({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          const Divider(),

          ListTile( title: Text('Nombre: ${user.name}' ) ),
          ListTile( title: Text('Edad: ${user.age}' ) ),

          const Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          const Divider(),

          ...user.professions.map((profession) => ListTile( title: Text(profession) )).toList(),
        ],
      ),
    );
  }
}