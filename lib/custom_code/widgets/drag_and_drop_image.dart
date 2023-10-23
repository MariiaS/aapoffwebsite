// Automatic FlutterFlow imports
import 'dart:convert';

import 'package:flutter/services.dart';

import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:io';

// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DragAndDropImage extends StatefulWidget {
  const DragAndDropImage({
    Key? key,
    this.width,
    this.height,
    required this.positionX,
    required this.positionY,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double positionX;
  final double positionY;

  @override
  _DragAndDropImageState createState() => _DragAndDropImageState();
}

class _DragAndDropImageState extends State<DragAndDropImage> {
  late Offset position;
  late String _randomImage;

  @override
  void initState() {
    super.initState();
    position = Offset(
        widget.positionX, widget.positionY); // Initial position of the image
    _loadRandomImage();
  }

  Future<void> _loadRandomImage() async {
    try {
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final manifestMap = json.decode(manifestContent);
      var imagePaths = manifestMap.keys
          .where((String key) => key.startsWith('assets/images/pins/'))
          .toList();

      if (imagePaths.isNotEmpty) {
        _randomImage = imagePaths[math.Random().nextInt(imagePaths.length)];
      } else {
        // Handle the case when no images are found in the directory
        _randomImage = "null"; // Set _randomImage to null
      }
      setState(() {}); // Trigger a rebuild after loading the random image
    } catch (e) {
      // Handle exceptions if necessary
      print('Error loading image: $e');
      _randomImage = "null"; // Set _randomImage to null
      setState(() {}); // Trigger a rebuild even if there was an error
    }
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
            data: _randomImage,

            feedback: Image.asset(
              _randomImage,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            childWhenDragging: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.transparent, // You can set a background color here if needed
              ),
            ),
            onDraggableCanceled: (velocity, offset) {
              // When the drag is canceled, update the position.
              setState(() {
                position = Offset(offset.dx, offset.dy - 88.0);
              });
            },
            child: Image.asset(
              _randomImage,
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
