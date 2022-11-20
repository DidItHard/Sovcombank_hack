import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';

class Passport_photo_verification extends StatelessWidget {
  const Passport_photo_verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 1, child: Container()),
            const Text(
              "Регистрация",
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(height: 48),
            Container(
              width: 202,
              height: 198,
              decoration: const BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.photo_library_outlined,
                size: 60,
              ),
            ),
            SizedBox(height: 16),
            const Text(
              'Прикрепите  фото своего  паспорта  для верификации',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xFF8B8B8B)),
            ),
            SizedBox(height: 50),
            _SendButton(),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                if (true) {}
                Navigator.pushNamed(
                    context, '/registration/registration_begin/registration_end');
              },
              child: const Text(
                'Пропустить',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Expanded(flex: 1, child: Container()),
          ],
        ),
      ),
    );
  }
}

class _SendButton extends StatelessWidget {
  const _SendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (true) {}
        Navigator.pushNamed(
            context, '/registration/registration_begin/registration_end');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF12D18E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 305,
        height: 60,
        child: const Text(
          'Отправить',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
