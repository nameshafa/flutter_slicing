import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxesWidget extends StatefulWidget {
  final String image;
  final String text;

  const BoxesWidget({Key? key, required this.image, required this.text})
      : super(key: key);
  @override
  _BoxesWidgetState createState() => _BoxesWidgetState();
}

class _BoxesWidgetState extends State<BoxesWidget> {
  Color _containerColor = const Color.fromRGBO(35, 42, 46, 1);
  Color _iconColor = const Color.fromRGBO(196, 196, 196, 1);

  @override
  Widget build(BuildContext context) {
    return Ink(
        child: InkWell(
      child: Container(
        width: 166,
        height: 57,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(35, 42, 46, 1),
            border: Border.all(
              color: _containerColor,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Image.asset(widget.image, color: _iconColor),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                widget.text,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: _iconColor),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          _containerColor = _containerColor == Colors.deepPurple
              ? const Color.fromRGBO(35, 42, 46, 1)
              : Colors.deepPurple;

          _iconColor = _iconColor == Colors.deepPurple
              ? const Color.fromRGBO(196, 196, 196, 1)
              : Colors.deepPurple;
        });
      },
    ));
  }
}
