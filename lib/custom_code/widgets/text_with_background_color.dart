// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TextWithBackgroundColor extends StatefulWidget {
  const TextWithBackgroundColor({
    Key? key,
    this.width,
    this.height,
    required this.text,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String text;

  @override
  _TextWithBackgroundColorState createState() =>
      _TextWithBackgroundColorState();
}

class _TextWithBackgroundColorState extends State<TextWithBackgroundColor> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
        style: FlutterFlowTheme.of(context)
            .displaySmall!
            .copyWith(backgroundColor: FlutterFlowTheme.of(context).alternate));
  }
}
