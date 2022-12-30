import 'package:dawn/dawn.dart';

import '../models/message.dart';
import 'audio.dart';
import 'icon.dart';

class StageMessage extends StatelessWidget {
  final Message message;
  final EventSubscriptionCallback? onEnd;

  const StageMessage.withoutSpeech(this.message, {super.key}) : onEnd = null;
  const StageMessage.withSpeech(this.message, {this.onEnd, super.key});

  @override
  Widget build(final BuildContext context) {
    return Container(
      [
        if (message.speechSource != null)
          Audio(message.speechSource!, onEnd: onEnd, showControls: false),
        if (message.icon != null)
          Icon(message.icon!, style: const Style({'font-size': '48px'})),
        Text(
          message.value,
          style: const Style({
            'font-size': '32px',
            'font-weight': '300',
            'line-height': '48px',
            'text-align': 'center',
          }),
        ),
      ],
      style: const Style({
        'display': 'flex',
        'flex-flow': 'column',
        'align-items': 'center',
        'justify-content': 'center',
        'gap': '16px',
      }),
    );
  }
}
