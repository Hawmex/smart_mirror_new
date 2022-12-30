import 'package:dawn/dawn.dart';

import 'icon.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Container(
      [
        Container(
          [Icon('waving_hand'), Text('خدانگهدار')],
          style: Style({
            'display': 'flex',
            'flex-flow': 'column',
            'gap': '8px',
            'align-items': 'center',
          }),
          animation: Animation(
            keyframes: [
              Keyframe(offset: 0, style: Style({'opacity': '0'})),
              Keyframe(offset: 1, style: Style({'opacity': '1'}))
            ],
            duration: Duration(seconds: 3),
            easing: Easing(0.4, 0, 0.2, 1),
            direction: AnimationDirection.alternate,
            fillMode: AnimationFillMode.both,
            iterations: double.infinity,
          ),
        ),
        Container(
          [Icon('music_note'), Text('آهنگ')],
          style: Style({
            'display': 'flex',
            'flex-flow': 'column',
            'gap': '8px',
            'align-items': 'center',
          }),
          animation: Animation(
            keyframes: [
              Keyframe(offset: 0, style: Style({'opacity': '0'})),
              Keyframe(offset: 1, style: Style({'opacity': '1'}))
            ],
            duration: Duration(seconds: 3),
            easing: Easing(0.4, 0, 0.2, 1),
            direction: AnimationDirection.alternate,
            fillMode: AnimationFillMode.both,
            iterations: double.infinity,
            startDelay: Duration(seconds: 1),
          ),
        ),
        Container(
          [Icon('smart_display'), Text('ویدیو')],
          style: Style({
            'display': 'flex',
            'flex-flow': 'column',
            'gap': '8px',
            'align-items': 'center',
          }),
          animation: Animation(
            keyframes: [
              Keyframe(offset: 0, style: Style({'opacity': '0'})),
              Keyframe(offset: 1, style: Style({'opacity': '1'}))
            ],
            duration: Duration(seconds: 3),
            easing: Easing(0.4, 0, 0.2, 1),
            direction: AnimationDirection.alternate,
            fillMode: AnimationFillMode.both,
            iterations: double.infinity,
            startDelay: Duration(seconds: 2),
          ),
        ),
      ],
      style: Style({
        'display': 'flex',
        'flex-flow': 'row',
        'flex-wrap': 'wrap',
        'gap': '32px',
        'align-items': 'center',
        'justify-content': 'center',
      }),
    );
  }
}
