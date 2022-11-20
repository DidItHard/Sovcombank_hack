import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class CodeCheck extends StatefulWidget {
  const CodeCheck({Key? key}) : super(key: key);

  @override
  State<CodeCheck> createState() => _CodeCheckState();
}

bool _onEditing = true;
String? _code = '';

class _CodeCheckState extends State<CodeCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/registration/registration_begin');
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Text('Назад', style: TextStyle(color: Colors.white,fontSize: 16)),

                      ],
                    ),
                  ),
                ],
              ),
              Expanded(flex: 1, child: Container()),
              Column(
                children: const [
                  Text('Подтверждение', style: TextStyle(color: Colors.white,fontSize: 32)),
                  Text('номера телефона', style: TextStyle(color: Colors.white, fontSize: 32)),
                ],
              ),
              Expanded(flex: 1, child: Container()),
              const CodeTextField(),
              const Text('Не получилии код?',
                style: TextStyle(color: Color(0xFF12D18E), fontSize: 16),),
              Expanded(flex: 2, child: Container()),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Center(
              //     child: _onEditing
              //         ? const Text('Please enter full code')
              //         : Text('Your code: $_code'),
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}

class CodeTextField extends StatefulWidget {
  const CodeTextField({super.key});

  @override
  State<CodeTextField> createState() => _CodeTextField();
}

class _CodeTextField extends State<CodeTextField> {
  @override
  build(BuildContext context) {
    return VerificationCode(
      textStyle: Theme.of(context)
          .textTheme
          .bodyText2!
          .copyWith(color: Theme.of(context).primaryColor),
      keyboardType: TextInputType.number,
      underlineColor: const Color(0xFF12D18E),
      // If this is null it will use primaryColor: Colors.red from Theme
      length: 4,
      cursorColor: const Color(0xFF12D18E),
      clearAll: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'clear all',
          style: TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.underline,
              color: Colors.blue[700]),
        ),
      ),
      onCompleted: (String value) {
        setState(() {
          _code = value;
          Navigator.pushNamed(context, '/registration/registration_begin');
        });
      },
      onEditing: (bool value) {
        setState(() {
          _onEditing = value;
        });
        if (!_onEditing) FocusScope.of(context).unfocus();
      },
    );
  }
}
