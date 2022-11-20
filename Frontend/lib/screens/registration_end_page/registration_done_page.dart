import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';

class RegistrationDonePage extends StatefulWidget {
  const RegistrationDonePage({Key? key}) : super(key: key);

  @override
  State<RegistrationDonePage> createState() => _RegistrationDonePageState();
}

class _RegistrationDonePageState extends State<RegistrationDonePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/profile_page');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '');
          },
          child: Column(
            children: [
              Expanded(child: Container()),
              const Icon(
                Icons.check_circle_outline,
                color: Color(0xFF12D18E),
                size: 150,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Регистрация\nуспшно\nзаверешена',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/forex_page');
                },
                child: const Text(
                  'Перейти в личный кабинет',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF12D18E),
                  ),
                ),
              ),
              Expanded(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
