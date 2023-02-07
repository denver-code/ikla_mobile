import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:ikla_mobile/app/internal/hex2color.dart';
import 'package:ikla_mobile/app/internal/widgets/logo.dart';
import 'package:ikla_mobile/app/internal/widgets/post_card.dart';

import '../controllers/feed_controller.dart';

class FeedView extends GetView<FeedController> {
  const FeedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FeedController controller = Get.put(FeedController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // shadowColor: Colors.transparent,
        elevation: 0,
        title: const IklaLogo(),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu_rounded,
                size: Get.width / 13,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "assets/images/profile.png",
                  width: Get.width / 13,
                ),
              )),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "POPULAR\nEDITIONS",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "eUkraineHead",
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: (() {
                    return List.generate(controller.posts.length, (index) {
                      {
                        return PostCard(
                            title: controller.posts[index]["title"],
                            author: controller.posts[index]["author"],
                            date: controller.posts[index]["date"],
                            views: controller.posts[index]["views"],
                            color: controller.posts[index]["color"],
                            alias: controller.posts[index]["alias"],
                            type: controller.posts[index]["type"]);
                      }
                      ;
                    });
                  }()),
                ),
              ),
            )),
          ],
        ),
      )),
      drawer: const Drawer(
        child: Center(
          child: Text("This should work."),
        ),
      ),
    );
  }
}
