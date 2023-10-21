// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DragAndDropImage extends StatefulWidget {
  const DragAndDropImage({
    Key? key,
    this.width,
    this.height,
    required this.image,
    required this.positionX,
    required this.positionY,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String image;
  final double positionX;
  final double positionY;

  @override
  _DragAndDropImageState createState() => _DragAndDropImageState();
}

class _DragAndDropImageState extends State<DragAndDropImage> {
  late Offset position;

  @override
  void initState() {
    super.initState();
    position = Offset(
        widget.positionX, widget.positionY); // Initial position of the image
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: position.dx,
          top: position.dy,
          child: Draggable<String>(
            // Data is the value this Draggable stores.
            data: widget.image,

            feedback: Image.network(
              widget.image,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            childWhenDragging: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors
                    .transparent, // You can set a background color here if needed
              ),
            ),
            onDraggableCanceled: (velocity, offset) {
              // When the drag is canceled, update the position.
              setState(() {
                position = Offset(offset.dx, offset.dy - 88.0);
              });
            },
            child: Image.asset(
              widget.image,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
