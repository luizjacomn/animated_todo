import 'package:animated_todo/screens/login/widgets/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: 'Usuário',
              obscure: false,
              icon: Icons.person_outline,
            ),
            InputField(
              hint: 'Senha',
              obscure: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
