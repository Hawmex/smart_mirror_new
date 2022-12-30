import 'dart:html' as html;

import 'media_widget.dart';

class Audio extends MediaWidget {
  final bool showControls;

  const Audio(
    super.source, {
    this.showControls = true,
    super.onEnd,
    super.style,
    super.animation,
    super.onTap,
    super.onPointerDown,
    super.onPointerUp,
    super.onPointerEnter,
    super.onPointerLeave,
    super.onPointerMove,
    super.onPointerCancel,
    super.onPointerOver,
    super.onPointerOut,
    super.onMouseDown,
    super.onMouseUp,
    super.onMouseEnter,
    super.onMouseLeave,
    super.onMouseMove,
    super.onMouseOver,
    super.onMouseOut,
    super.onTouchStart,
    super.onTouchEnd,
    super.onTouchMove,
    super.onTouchCancel,
    super.key,
  });

  @override
  AudioNode createNode() => AudioNode(this);
}

class AudioNode extends MediaNode<Audio, html.AudioElement> {
  AudioNode(super.widget) : super(element: html.AudioElement());

  @override
  void initialize() {
    super.initialize();
    element.controls = widget.showControls;
  }
}
