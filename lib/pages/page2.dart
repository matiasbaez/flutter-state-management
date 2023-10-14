
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/user/user_bloc.dart';
import 'package:state_management/models/models.dart';

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
              onPressed: () {
                final blocProvider = BlocProvider.of<UserBloc>(context, listen: false);
                final user = User(name: "Matias Baez", age: 26, professions: ["Fullstack Developer"]);
                blocProvider.add(ActivateUserEvent(user));
              },
              color: Colors.blue,
              child: const Text('Set user', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                final blocProvider = BlocProvider.of<UserBloc>(context, listen: false);
                blocProvider.add(UpdateUserAgeEvent(25));
              },
              color: Colors.blue,
              child: const Text('Change age', style: TextStyle( color: Colors.white )),
            ),

            MaterialButton(
              onPressed: () {
                final blocProvider = BlocProvider.of<UserBloc>(context, listen: false);
                blocProvider.add(UpdateUserProfessionEvent("Mobile Developer"));
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