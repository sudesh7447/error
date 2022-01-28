import 'package:chat_app/login.dart';
import 'package:chat_app/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthControl extends GetxController {
  static AuthControl instance = Get.find();

  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    //  user will be notified

    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print('login page go');
      Get.offAll(() => Loginpage());
    } else {
      Get.offAll(() => welcomepage());
    }
  }

  void register(
    String username,
    email,
    password,
  ) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {}
  }
}
