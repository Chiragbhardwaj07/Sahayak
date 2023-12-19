import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sahayak/presentation/account_screen/edit_profile/provider/edit_profile_provider.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(Object context) {
    return ChangeNotifierProvider(
      create: (_) => EditProfileProvider(),
      child: _EditProfilePage(),
    );
  }
}

class _EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<EditProfileProvider>(context);

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: ListView(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 64,
                ),
                GestureDetector(
                  onTap: viewModel.pickImage,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor:
                        Colors.black, // Provide a default image path
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: viewModel.emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: viewModel.phoneNumberController,
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                ),
                TextField(
                  controller: viewModel.firstNameController,
                  decoration: const InputDecoration(labelText: 'First Name'),
                ),
                TextField(
                  controller: viewModel.lastNameController,
                  decoration: const InputDecoration(labelText: 'Last Name'),
                ),
                SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: viewModel.saveChanges,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadiusDirectional.circular(20))),
                    child: const Text(
                      'Update Profile',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            )));
  }
}
