import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_theme.dart';

export 'home_page_model.dart';

class HoverTab extends StatefulWidget {
  final String text;
  final bool isHovered;
  final VoidCallback onHover;

  const HoverTab({
    required this.text,
    required this.isHovered,
    required this.onHover,
    Key? key,
  }) : super(key: key);

  @override
  _HoverTabState createState() => _HoverTabState();
}

class _HoverTabState extends State<HoverTab> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => widget.onHover(),
      child: Tab(
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.isHovered
                ? FlutterFlowTheme.of(context).primaryText
                : FlutterFlowTheme.of(context).secondaryText,
          ),
        ),
      ),
    );
  }
}
