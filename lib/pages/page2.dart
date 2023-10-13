
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/user/user_cubit.dart';
import 'package:state_management/models/models.dart';

class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {

    final userCubit = context.read<UserCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2', style: TextStyle( color: Colors.white ) ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                final user = User(name: 'Matias Baez', age: 25, professions: ['Fullstack Developer']);
                userCubit.selectUser(user);
              },
              color: Colors.blue,
              child: const Text('Set user', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                userCubit.changeAge(26);
              },
              color: Colors.blue,
              child: const Text('Change age', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                userCubit.addProfession("Mobile developer");
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