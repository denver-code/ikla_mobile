import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ikla_mobile/app/internal/hex2color.dart';
import 'package:ikla_mobile/config.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // shadowColor: Colors.transparent,
        elevation: 0,
        title: Row(
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
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height / 20,
              ),
              Image.asset(
                "assets/images/learn.png",
                scale: 3.1,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Authorisation",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 270,
                child: Column(
                  children: [
                    GestureDetector(
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
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2)),
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
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: <Widget>[
                        const Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "or",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    GestureDetector(
                      child: const SizedBox(
                        width: double.infinity,
                        height: 25,
                        child: Center(
                          child: Text(
                            "Continue without authorisation",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                  child: SizedBox(
                height: double.infinity,
              )),
              Image.asset("assets/images/books.png"),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Tip: Authorisation needed for creating posts,\ncomments, likes and a lot more features!',
                style: TextStyle(
                  fontSize: 12,
                  color: HexColor.fromHex("#515151"),
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
