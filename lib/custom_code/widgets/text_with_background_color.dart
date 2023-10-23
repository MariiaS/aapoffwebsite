// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
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
    required this.highlightHeight,
    required this.text,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double highlightHeight;
  final String text;

  @override
  _TextWithBackgroundColorState createState() =>
      _TextWithBackgroundColorState();
}

class _TextWithBackgroundColorState extends State<TextWithBackgroundColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: widget.width ?? double.infinity,
        maxHeight: widget.height ?? double.infinity,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 0,
            child: Container(
              height: widget.highlightHeight,
              width: (widget.text.length * 22)
                  .toDouble(), // Adjust the multiplier based on your font size and style
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ),
          Positioned(
            left: 0,
            child: Padding(
              padding: EdgeInsets.zero,
              child: Text(
                widget.text,
                style: FlutterFlowTheme.of(context).displaySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
