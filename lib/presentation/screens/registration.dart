import 'package:flutter/material.dart';
import 'package:pocks/data/repositories/auth_repo.dart';
import 'package:pocks/domain/models/user_model.dart';
import 'package:pocks/presentation/widgets/custom_textfield.dart';
import 'package:pocks/presentation/widgets/primary_btn.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  //avatar image

  final authRepo = AuthRepoImpl();

  Future<void> _register() async {
    final userModel = UserModel(
      email: _emailController.text,
      username: _usernameController.text,
      name: '${_firstNameController.text} ${_lastNameController.text}',
      password: _passwordController.text,
      passwordConfirm: _confirmPasswordController.text,
    );

    await authRepo.register(userModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'Email',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    // Add more validation here if needed
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  hintText: 'Username',
                  controller: _usernameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your username';
                    }
                    // Add more validation here if needed
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  hintText: 'First Name',
                  controller: _firstNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your first name';
                    }
                    // Add more validation here if needed
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  hintText: 'Last Name',
                  controller: _lastNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your last name';
                    }
                    // Add more validation here if needed
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  hintText: 'Password',
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    // Add more validation here if needed
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  hintText: 'Confirm Password',
                  controller: _confirmPasswordController,
                  obscureText: true,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                PrimaryButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      // Perform registration operation
                      _register();
                    }
                  },
                  text: 'Register',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
