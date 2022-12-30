import 'package:dawn/dawn.dart';

class Icon extends Text {
  const Icon(
    super.value, {
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
  IconNode createNode() => IconNode(this);
}

class IconNode extends TextNode {
  IconNode(super.widget);

  @override
  void initializeElement() {
    super.initializeElement();
    element.className = 'material-symbols-outlined';
  }
}
