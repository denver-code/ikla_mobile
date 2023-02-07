import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ikla_mobile/app/internal/hex2color.dart';
import 'package:ikla_mobile/app/internal/widgets/type_badge.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key,
      required this.title,
      required this.author,
      required this.date,
      required this.views,
      required this.color,
      required this.alias,
      required this.type});
  final String title;
  final String author;
  final String date;
  final String type;
  final int views;
  final String color;
  final String alias;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: HexColor.fromHex(color),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TypeBadge(
                      text:
                          "${type.capitalizeFirst} / ${alias.capitalizeFirst}"),
                  Text(
                    "$views Views",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: Get.width / 1.6,
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "eUkraineHead",
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "By $author",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        date,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      "assets/images/read_btn.png",
                      scale: 4,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
