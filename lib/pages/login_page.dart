import 'package:flutter/material.dart';
import 'package:project_login_page/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.people, size: 98),
            TextField(
              decoration: const InputDecoration(hintText: 'Login'),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'Password'),
              onChanged: _controller.setPass,
            ),
            const SizedBox(height: 15),
            ValueListenableBuilder<bool>(
              valueListenable: _controller.inLoader,
              builder: (_, inLoader, __) => inLoader
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _controller.auth().then((result) {
                          if (result) {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Falha na validação'),
                                duration: Duration(seconds: 5),
                              ),
                            );
                          }
                        });
                      },
                      child: const Text('Login'),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
