import 'package:flutter/material.dart';
import 'package:project_login_page/components/login/custom_login_button_component.dart';
import 'package:project_login_page/controllers/login_controller.dart';
import 'package:project_login_page/widgets/custom_text_field_widget.dart';

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
            CustomTextFieldWidget(
              label: "login",
              onChanged: _controller.setLogin,
            ),
            CustomTextFieldWidget(
              label: "Senha",
              onChanged: _controller.setPass,
              obscureText: true,
            ),
            const SizedBox(height: 15),
            CustomLoginBottonComponent(
              loginController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
