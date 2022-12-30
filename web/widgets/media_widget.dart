import 'dart:html' as html;

import 'package:dawn/dawn.dart';

abstract class MediaWidget extends PaintedWidget {
  final String source;

  final EventSubscriptionCallback? onEnd;

  const MediaWidget(
    this.source, {
    this.onEnd,
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
  MediaNode createNode();
}

abstract class MediaNode<T extends MediaWidget, U extends html.MediaElement>
    extends ChildlessPaintedNode<T, U> {
  MediaNode(super.widget, {required super.element});

  @override
  void initialize() {
    super.initialize();

    addEventSubscription('ended', widget.onEnd);

    element
      ..controls = true
      ..autoplay = true
      ..loop = false
      ..src = widget.source;
  }
}
