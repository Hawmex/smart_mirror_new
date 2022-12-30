import 'package:dawn/dawn.dart';

import 'clock.dart';
import 'weather.dart';

class DigitalWatch extends StatelessWidget {
  const DigitalWatch({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Container(
      [Clock(), Weather()],
      style: Style({
        'display': 'flex',
        'flex-flow': 'row',
        'justify-content': 'space-between',
        'gap': '16px',
        'width': '100%',
      }),
    );
  }
}
