import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileProvider with ChangeNotifier {
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;

  String avatarPath = '';

  EditProfileProvider() {
    // Initialize the controller
    emailController = TextEditingController(text: 'user@example.com');
    phoneNumberController = TextEditingController(text: '+917425888456');
    firstNameController = TextEditingController(text: 'Ankur');
    lastNameController = TextEditingController(text: 'Debnath');
  }

  Future<void> pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      avatarPath = pickedFile.path;
      notifyListeners();
    }
  }

  Future<void> saveChanges() async {
    // save profile changes
    // User updatedProfile = User(
    //   avatar: avatarPath,
    //   email: emailController.text,
    //   phoneNumber: phoneNumberController.text,
    //   firstName: firstNameController.text,
    //   lastName: lastNameController.text,
    // );
  }
}
