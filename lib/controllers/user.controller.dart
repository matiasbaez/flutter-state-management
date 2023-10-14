
import 'package:get/get.dart';

import 'package:state_management/models/models.dart';

class UserController extends GetxController {

  var existsUser = false.obs;
  Rx<User> user = User().obs;

  void loadUser( User nUser ) {
    existsUser.value = true;
    user.value = nUser;
  }

  void updateAge( int age ) {
    user.update((value) {
      value!.age = age;
    });
  }

  void addProfession( String profession ) {
    user.update((value) {
      value!.professions.add(profession);
    });
  }

}
