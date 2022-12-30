import 'dart:html' as html;

import 'media_widget.dart';

class Video extends MediaWidget {
  const Video(
    super.source, {
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
  VideoNode createNode() => VideoNode(this);
}

class VideoNode extends MediaNode<Video, html.VideoElement> {
  VideoNode(super.widget) : super(element: html.VideoElement());
}
