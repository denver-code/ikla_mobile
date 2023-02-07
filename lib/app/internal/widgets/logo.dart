import 'package:flutter/material.dart';
import 'package:ikla_mobile/config.dart';

class IklaLogo extends StatelessWidget {
  const IklaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/Logo.png",
          height: 34,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          appName,
          style: TextStyle(
            color: Colors.black,
            fontFamily: "KyivType",
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
