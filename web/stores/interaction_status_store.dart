import 'dart:async';
import 'dart:html' as html;

import 'package:dawn/dawn.dart';

final interactionStatusStore = InteractionStatusStore(debug: false);

enum InteractionStatus {
  none(),
  sayHelloWithoutIntroQuestion('say-hello-without-intro-question'),
  sayHelloWithIntroQuestion('say-hello-with-intro-question'),
  sayShortIntro('say-short-intro'),
  sayReadyForCommands('say-ready-for-commands'),
  showFullIntroVideo('show-full-intro-video'),
  showIrandocIntroVideo('show-irandoc-intro-video'),
  sayGoodbye('say-goodbye'),
  showVideo('show-video'),
  playMusic('play-music');

  final String? eventName;

  const InteractionStatus([this.eventName]);
}

class InteractionStatusStore extends Store {
  InteractionStatus status = InteractionStatus.none;
  final bool debug;
  final _subscriptions = <StreamSubscription<html.Event>>[];

  InteractionStatusStore({this.debug = false});

  @override
  void initialize() {
    super.initialize();

    if (debug) listen(() => print(status));

    for (final statusValue in InteractionStatus.values) {
      if (statusValue.eventName != null) {
        _subscriptions.add(
          html.window.on[statusValue.eventName!].listen((final event) {
            setState(() => status = statusValue);
          }),
        );
      }
    }
  }

  @override
  void dispose() {
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }

    _subscriptions.clear();

    super.dispose();
  }
}
