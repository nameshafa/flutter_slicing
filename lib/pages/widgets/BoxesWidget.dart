import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              color: widget.image == 'assets/images/d-letter.svg'
                  ? const Color.fromRGBO(139, 136, 239, 1)
                  : _containerColor,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              widget.image,
              semanticsLabel: 'My SVG Image',
              height: 20,
              width: 20,
              color: widget.image == 'assets/images/d-letter.svg'
                  ? null
                  : _iconColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  widget.text,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontFamily: 'Proxima',
                      color: Color.fromRGBO(196, 196, 196, 1)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          _containerColor =
              _containerColor == const Color.fromRGBO(139, 136, 239, 1)
                  ? const Color.fromRGBO(35, 42, 46, 1)
                  : const Color.fromRGBO(139, 136, 239, 1);

          _iconColor = _iconColor == const Color.fromRGBO(139, 136, 239, 1)
              ? const Color.fromRGBO(196, 196, 196, 1)
              : const Color.fromRGBO(139, 136, 239, 1);
        });
      },
    ));
  }
}
