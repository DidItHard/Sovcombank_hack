import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';

String first_name = 'Орлов';
String last_name = 'Даниил';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: MediaQuery.of(context).size.width),
            Expanded(child: Container()),
            Image.asset("lib/assets/avatar.png"),
            SizedBox(height: 10,),
            Text(
              '$first_name $last_name',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 36,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              child: Container(
                child: _ProfileDataWidget(),
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF494949),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 20),
            InkWell(
              child: Container(
                child: _ForexPocketWidget(),
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF494949),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/forex_pocket_page');
              },

            ),
            SizedBox(height: 20),
            InkWell(
              child: Container(
                child: _ForexPageWidget(),
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF494949),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
              ),
              onTap: () {},
            ),
            Expanded(child: Container()),
            InkWell(
              child: const Text(
                'Выйти из аккаунта',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                  color: Color(0xFFD75442),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/entry');
              },
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}

class _ProfileDataWidget extends StatefulWidget {
  const _ProfileDataWidget({Key? key}) : super(key: key);

  @override
  State<_ProfileDataWidget> createState() => __ProfileDataWidgetState();
}

class __ProfileDataWidgetState extends State<_ProfileDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.person_sharp,
          size: 40,
          color: Color(0xFF12D18E),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Личные данные',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}

class _ForexPocketWidget extends StatelessWidget {
  const _ForexPocketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.speed_sharp,
          size: 40,
          color: Color(0xFF12D18E),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Инвестиционный\nпортфель',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}

class _ForexPageWidget extends StatelessWidget {
  const _ForexPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.query_stats,
          size: 40,
          color: Color(0xFF12D18E),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Котировки валют',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}

