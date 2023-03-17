import 'package:flutter/material.dart';
import 'package:widget_bootcamp/layouts/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Flutter',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 24),
              const Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),
              TextFormField(),
              const SizedBox(height: 24),
              TextFormField(),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Does not have account? ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'SignUp',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.red
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
