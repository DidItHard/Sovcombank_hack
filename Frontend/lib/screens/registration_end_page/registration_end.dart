import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';

class RegistrationEndPage extends StatefulWidget {
  const RegistrationEndPage({Key? key}) : super(key: key);

  @override
  State<RegistrationEndPage> createState() => _RegistrationEndPageState();
}

class _RegistrationEndPageState extends State<RegistrationEndPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      setState(() {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushNamed(context, '/registration/registration_begin/registration_done');
        });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Container()),
            const Text(
              'Регистрация\nзаверешена',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.check_circle_outline,
              color: Color(0xFF12D18E),
              size: 150,
            ),
            SizedBox(
              height: 180,
            ),
            const Text(
              'Дождитесь подтверждение от\nадминистратора',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
            ),
            Expanded(flex: 2, child: Container()),
          ],
        ),
      ),
    );
  }
}
