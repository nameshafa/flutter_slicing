import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxesWidget extends StatelessWidget {
  final String image;
  final String text;
  final Color border;
  const BoxesWidget(
      {super.key,
      required this.image,
      required this.text,
      required this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: 166,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(35, 42, 46, 1),
          border: Border.all(
            color: border,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Image.asset(image),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(color: Colors.white),
                  fontSize: 11,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
