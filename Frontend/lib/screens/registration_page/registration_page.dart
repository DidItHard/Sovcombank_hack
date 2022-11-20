import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  final _heighForms = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Expanded(flex: 2, child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ), // FormTe
                ],
              ),
              // SizedBox(height: 80),
              Expanded(child: Container()),
              _FIOTextfield(),
              SizedBox(height: 30),
              _PhoneTextfield(),
              SizedBox(height: 30),
              _NextButton(),
              Expanded(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}

class _FIOTextfield extends StatefulWidget {
  const _FIOTextfield({Key? key}) : super(key: key);

  @override
  State<_FIOTextfield> createState() => __FIOTextfield();
}

class __FIOTextfield extends State<_FIOTextfield> {
  final _loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _loginController,
      obscureText: false,
      decoration: const InputDecoration(
        hintText: 'ФИО',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true, //<-- SEE HERE
        fillColor: Color(0xFFDDDDDD),
      ),
    );
  }
}

class _PhoneTextfield extends StatefulWidget {
  const _PhoneTextfield({Key? key}) : super(key: key);

  @override
  State<_PhoneTextfield> createState() => __PhoneTextfield();
}

class __PhoneTextfield extends State<_PhoneTextfield> {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _phoneController,
      obscureText: false,
      decoration: const InputDecoration(
        hintText: 'Номер телефона',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true, //<-- SEE HERE
        fillColor: Color(0xFFDDDDDD),
      ),
    );
  }
}

class _PasswordTextfield extends StatefulWidget {
  const _PasswordTextfield({Key? key}) : super(key: key);

  @override
  State<_PasswordTextfield> createState() => __PasswordTextfield();
}

class __PasswordTextfield extends State<_PasswordTextfield> {
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _passwordController,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Пароль',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true, //<-- SEE HERE
        fillColor: Color(0xFFDDDDDD),
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (true) {
          Navigator.pushNamed(context, '/code_check');
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF12D18E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 302,
        height: 60,
        child: const Text(
          'Далее',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
