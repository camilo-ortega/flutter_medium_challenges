import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auth_firebase_app/services/auth_service.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({
    super.key,
  });

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                await ref.read(authenticationServiceProvider).signIn(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                    );
                context.go('/');
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () => context.go('/register'),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
