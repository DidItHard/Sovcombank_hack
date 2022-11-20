import 'package:flutter/material.dart';
import 'package:stock_app/screens.dart';

int counterDollarValue = 26;
int counterRubValue = 24853;
int counterEurValue = 531;
int counterYuanValue = 3649;

class ForexPocketWidget extends StatefulWidget {
  const ForexPocketWidget({Key? key}) : super(key: key);

  @override
  State<ForexPocketWidget> createState() => _ForexPocketWidgetState();
}

class _ForexPocketWidgetState extends State<ForexPocketWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/profile_page');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                    const Text(
                      'Инвестиционный портфель',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              'Баланс:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                color: Color(0xFFFFFFFF),
              ),
            ),
            Balance(),
            SizedBox(
              height: 50,
            ),
            _DollarBance(),
            SizedBox(
              height: 10,
            ),
            _EuroBalance(),
            SizedBox(
              height: 10,
            ),
            _RubBalance(),
            SizedBox(
              height: 10,
            ),
            _YuanBalance(),
            SizedBox(
              height: 36,
            ),
            BalanceUp(),
            SizedBox(
              height: 10,
            ),
            BalanceDown(),
          ],
        ),
      ),
    );
  }
}

class _DollarBance extends StatefulWidget {
  const _DollarBance({Key? key}) : super(key: key);

  @override
  State<_DollarBance> createState() => _DollarBanceState();
}

class _DollarBanceState extends State<_DollarBance> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.attach_money,
              size: 30,              color: Color(0xFF12D18E).withOpacity(0.6),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$counterDollarValue \$ ',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              width: 180,
            ),
            Icon(
              Icons.navigate_next,
              size: 40,
              color: Colors.white,
            )
          ],
        ),
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
    );
  }
}

class _EuroBalance extends StatefulWidget {
  const _EuroBalance({Key? key}) : super(key: key);

  @override
  State<_EuroBalance> createState() => _EuroBalanceState();
}

class _EuroBalanceState extends State<_EuroBalance> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.euro,
              size: 30,              color: Color(0xFF12D18E).withOpacity(0.6),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$counterEurValue €',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              width: 140,
            ),
            Icon(
              Icons.navigate_next,
              size: 40,
              color: Colors.white,
            )
          ],
        ),
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
    );
  }
}

class _RubBalance extends StatefulWidget {
  const _RubBalance({Key? key}) : super(key: key);

  @override
  State<_RubBalance> createState() => _RubBalanceState();
}

class _RubBalanceState extends State<_RubBalance> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.currency_ruble,
              size: 30,              color: Color(0xFF12D18E).withOpacity(0.6),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '24853 ₽',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              width: 150,
            ),
            Icon(
              Icons.navigate_next,
              size: 40,
              color: Colors.white,
            )
          ],
        ),
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
    );
  }
}

class _YuanBalance extends StatefulWidget {
  const _YuanBalance({Key? key}) : super(key: key);

  @override
  State<_YuanBalance> createState() => _YuanBalanceState();
}

class _YuanBalanceState extends State<_YuanBalance> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.currency_yuan,
              size: 30,
              color: Color(0xFF12D18E).withOpacity(0.6),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$counterYuanValue Ұ',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(
              width: 160,
            ),
            Icon(
              Icons.navigate_next,
              size: 40,
              color: Colors.white,
            )
          ],
        ),
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
    );
  }
}

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '24 853 ₽',
      style: TextStyle(
        fontSize: 36,
        color: Color(0xFF12D18E),
      ),
    );
  }
}

class BalanceUp extends StatelessWidget {
  const BalanceUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Пополнить',
          style: TextStyle(fontSize: 16, color: Color(0xFF12D18E)),
        ),
        width: 200,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF494949),
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
        ),
      ),
      onTap: () {},
    );
  }
}

class BalanceDown extends StatefulWidget {
  const BalanceDown({Key? key}) : super(key: key);

  @override
  State<BalanceDown> createState() => _BalanceDownState();
}

class _BalanceDownState extends State<BalanceDown> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Вывести',
          style: TextStyle(fontSize: 16, color: Color(0xFFD75442)),
        ),
        width: 200,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF494949),
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
        ),
      ),
      onTap: () {},
    );
  }
}
