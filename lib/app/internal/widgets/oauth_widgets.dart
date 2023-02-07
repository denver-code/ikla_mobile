import "package:flutter/material.dart";
import 'package:ikla_mobile/app/internal/hex2color.dart';

class GoogleOAuth extends StatelessWidget {
  const GoogleOAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(2)),
          border: Border.all(
            color: HexColor.fromHex("#E2E8F0"),
          ),
        ),
        width: double.infinity,
        height: 44,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Image.asset(
                  "assets/images/google.png",
                  scale: 2.5,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Sign in with Google",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ]),
      ),
    );
  }
}

class AppleOAuth extends StatelessWidget {
  const AppleOAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        width: double.infinity,
        height: 44,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Image.asset(
                  "assets/images/apple.png",
                  scale: 2.5,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Sign in with Apple",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ]),
      ),
    );
  }
}
