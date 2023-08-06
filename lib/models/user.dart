
import 'package:meta/meta.dart';

class User {

  String name;
  int age;
  List<String> professions;

  User({
    required this.name,
    this.age = 0,
    this.professions = const []
  })
  : assert(name != null);

}