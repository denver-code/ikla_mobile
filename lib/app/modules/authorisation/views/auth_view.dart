import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ikla_mobile/app/internal/widgets/books_footer.dart';
import 'package:ikla_mobile/app/internal/widgets/custom_spacer.dart';
import 'package:ikla_mobile/app/internal/widgets/logo.dart';
import 'package:ikla_mobile/app/internal/widgets/oauth_widgets.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // shadowColor: Colors.transparent,
        elevation: 0,
        title: const IklaLogo(),
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
                    const AppleOAuth(),
                    const CustomSpacer(),
                    const GoogleOAuth(),
                    const CustomSpacer(),
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
                    const CustomSpacer(),
                    GestureDetector(
                      onTap: controller.withoutAuth,
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
              const BooksFooter(
                text:
                    "Tip: Authorisation needed for creating posts,\ncomments, likes and a lot more features!",
              )
            ],
          ),
        ),
      ),
    );
  }
}
