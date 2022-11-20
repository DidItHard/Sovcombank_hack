import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';

bool newUser = false;

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Expanded(flex: 2, child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Вход",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ), // FormTe
                ],
              ),
              // SizedBox(height: 80),
              Expanded(child: Container()),
              const _LoginTextfield(),
              const SizedBox(height: 30),
              const _PhoneTextfield(),
              const SizedBox(height: 30),
              const _PasswordTextfield(),
              const SizedBox(height: 30),
              const _NextButton(),
              const SizedBox(height: 20),
              InkWell(
                child: const Text(
                  'Сменить аккаунт',
                  style: TextStyle(color: Color(0xFF8B8B8B), fontSize: 20),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/registration');
                },
              ),

              Expanded(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginTextfield extends StatefulWidget {
  const _LoginTextfield({Key? key}) : super(key: key);

  @override
  State<_LoginTextfield> createState() => __LoginTextfield();
}

class __LoginTextfield extends State<_LoginTextfield> {
  final _loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _loginController,
      obscureText: false,
      decoration: const InputDecoration(
        hintText: 'Логин',
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
        if (true) {}
        Navigator.pushNamed(context, '/profile_page');
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
