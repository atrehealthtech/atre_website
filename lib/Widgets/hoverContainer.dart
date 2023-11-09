// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class HoverTechContainer extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const HoverTechContainer({Key? key, required this.builder}) : super(key: key);

  @override
  _HoverTechContainerState createState() => _HoverTechContainerState();
}

class _HoverTechContainerState extends State<HoverTechContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    double scaleF = 1.11;
    final hovered = Matrix4.identity()..scale(scaleF, scaleF);

    final transform = isHovered ? hovered : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
