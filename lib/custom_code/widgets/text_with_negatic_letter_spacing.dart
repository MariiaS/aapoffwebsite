// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TextWithNegaticLetterSpacing extends StatefulWidget {
  const TextWithNegaticLetterSpacing({
    Key? key,
    this.width,
    this.height,
    required this.negativeLetterSpacing,
    required this.textToSpace,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double negativeLetterSpacing;
  final String textToSpace;

  @override
  _TextWithNegaticLetterSpacingState createState() =>
      _TextWithNegaticLetterSpacingState();
}

class _TextWithNegaticLetterSpacingState
    extends State<TextWithNegaticLetterSpacing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Text(
        widget.textToSpace,
        style: TextStyle(
          letterSpacing: widget.negativeLetterSpacing,
        ),
      ),
    );
  }
}
