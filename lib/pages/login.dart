import 'package:ex_2_corso_flutter/widgets/CheckboxField.dart';
import 'package:ex_2_corso_flutter/widgets/InputField.dart';
import 'package:ex_2_corso_flutter/widgets/SocialMediaIcon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 100),
                const Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Colors.white),
                ),
                const SizedBox(height: 28),
                const InputField(
                  hintText: 'Enter your Email',
                  label: 'Email',
                  icon: Icon(Icons.email),
                ),
                const SizedBox(height: 30),
                const InputField(
                  hintText: 'Enter your Password',
                  isPassword: true,
                  label: 'Password',
                  icon: Icon(Icons.lock),
                ),
                const SizedBox(height: 8),
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                CheckboxField(
                  value: rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      rememberMe = !rememberMe;
                    });
                  },
                  label: 'Remember Me',
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/'); // Naviga a '/home'
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 68, 68, 68),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          letterSpacing: 1.2,
                          fontSize: 18,
                          color: Color(0xFF505050),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '- OR -',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Sign in with',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIcon(
                        imagePath: 'assets/icons/facebook.png',
                        onPressed: () {}),
                    const SizedBox(width: 50),
                    SocialMediaIcon(
                        networkImage: true,
                        imagePath:
                            'https://w7.pngwing.com/pngs/344/344/png-transparent-google-logo-google-logo-g-suite-google-text-logo-symbol-thumbnail.png',
                        onPressed: () {}),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
