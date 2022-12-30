import 'dart:async';
import 'dart:math';

import 'package:dawn/dawn.dart';

import '../widgets/audio.dart';
import '../widgets/stage_message.dart';
import '../widgets/video.dart';
import 'message.dart';

class StageSnapshot {
  final Widget content;
  final Future<void> Function() future;

  const StageSnapshot._({required this.content, required this.future});

  factory StageSnapshot.message(final List<Message> messages) {
    final pickedMessage = messages[Random().nextInt(messages.length)];

    if (pickedMessage.speechSource == null) {
      return StageSnapshot._(
        content: StageMessage.withoutSpeech(pickedMessage),
        future: () => Future.delayed(pickedMessage.duration!),
      );
    } else {
      final controller = StreamController<void>.broadcast();

      return StageSnapshot._(
        content: StageMessage.withSpeech(
          pickedMessage,
          onEnd: (final event) => controller
            ..add(null)
            ..close(),
        ),
        future: () => controller.stream.first,
      );
    }
  }

  factory StageSnapshot.audio(final String source) {
    final controller = StreamController<void>.broadcast();

    return StageSnapshot._(
      content: Audio(
        source,
        onEnd: (final event) => controller
          ..add(null)
          ..close(),
        style: const Style({'width': '100%', 'height': '100%'}),
      ),
      future: () => controller.stream.first,
    );
  }

  factory StageSnapshot.video(final String source) {
    final controller = StreamController<void>.broadcast();

    return StageSnapshot._(
      content: Video(
        source,
        onEnd: (final event) => controller
          ..add(null)
          ..close(),
        style: const Style({'width': '100%', 'height': '100%'}),
      ),
      future: () => controller.stream.first,
    );
  }
}
