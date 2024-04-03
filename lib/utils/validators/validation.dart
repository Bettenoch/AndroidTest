import 'package:get/get.dart';

class TValidator {
  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty){
      return 'Email is required.';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'invalid email address';
    }
    return null;
  }
  static String?validatePassword(String? value) {
    if(value == null || value.isEmpty) {
      return 'password is required';
    }
    if(value.length <6) {
      return 'Password must be at least 6 characters long';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one number';
    }
    //check for special characters
    if(!value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))){
      return 'password must contain at least one character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if(value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format(10digits required)';
    }
    return null;
  }
}
