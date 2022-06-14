import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/Controllers/comman_dialog.dart';
import 'package:ecommerce/screens/ShowRoom.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerce/Controllers/data_controller.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var userId;
  Future<void> SignUp(email, password, username) async {
    try {
      CommanDialog.showLoading();
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password);
      print(userCredential);
      CommanDialog.hideLoading();
      try {
        CommanDialog.showLoading();
        var response =
            await FirebaseFirestore.instance.collection('userslist').add({
          'user_Id': userCredential.user!.uid,
          'user_name': username,
          "password": password,
          'joinDate': DateTime.now().millisecondsSinceEpoch,
          'email': email
        });
        print("Firebase response1111 ${response.id}");
        CommanDialog.hideLoading();
        Get.back();
      } catch (exception) {
        CommanDialog.hideLoading();
        print("Error Saving Data at firestore $exception");
      }
    } on FirebaseAuthException catch (e) {
      CommanDialog.hideLoading();
      if (e.code == 'weak-password') {
        CommanDialog.showErrorDialog(
            description: "The password provided is too weak");
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        CommanDialog.showErrorDialog(
            description: "The accpunt already exist for that email");
        print('The account already exists for that email.');
      }
    } catch (e) {
      CommanDialog.hideLoading();
      CommanDialog.showErrorDialog(description: "Something went wrong");
      print(e);
    }
  }

  Future<void> login(email, password) async {
    print('$email, $password');
    try {
      CommanDialog.showLoading();
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email.trim(), password: password);
      print(userCredential.user!.uid);
      userId = userCredential.user!.uid;
      CommanDialog.hideLoading();

      Get.off(() => ShowRoom());
    } on FirebaseAuthException catch (e) {
      CommanDialog.hideLoading();
      if (e.code == 'user-not-found') {
        CommanDialog.showErrorDialog(
            description: "No user found for that email");
        print('no user found for that email');
      } else if (e.code == 'wrong-password') {
        CommanDialog.showErrorDialog(
            description: "Wrong password for that user");
        print('wrong password provided for that user');
      }
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
