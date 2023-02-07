import 'package:flutter/material.dart';
import 'package:ikla_mobile/app/internal/hex2color.dart';

class BooksFooter extends StatelessWidget {
  const BooksFooter({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/books.png"),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: HexColor.fromHex("#515151"),
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
