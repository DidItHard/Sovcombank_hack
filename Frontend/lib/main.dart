import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';
import 'package:stock_app/server/constants.dart';
import 'package:stock_app/server/remote_service.dart';
import 'package:stock_app/server/user_model.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/entry',
      routes: {
        '/entry': (context) => const EntryPage(),
        '/registration': (context) => const RegistrationPage(),
        '/registration/registration_begin': (context) => const RegistrationBeginPage(),
        '/registration/registration_begin/registration_end': (context) => const RegistrationEndPage(),
        '/registration/registration_begin/registration_done': (context) => const RegistrationDonePage(),
        '/passport_photo_verification': (context) => const Passport_photo_verification(),
        '/code_check': (context) => const CodeCheck(),
        '/forex_page': (context) => const ForexPage(),
        '/profile_page': (context) => const ProfilePage(),
        '/forex_pocket_page': (context) => const ForexPocketWidget(),

      },
    ),
  );
  // await postData();
}
//
postData() async {
  await RemoteService().putUser();
}