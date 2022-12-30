import 'package:dawn/dawn.dart';

import 'features.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Container(
      [
        Features(),
        Text(
          'آینه‌ی هوشمند',
          style: Style({'font-size': '14px', 'font-weight': '600'}),
        )
      ],
      style: Style({
        'display': 'flex',
        'flex-flow': 'row',
        'flex-wrap': 'wrap',
        'gap': '32px',
        'justify-content': 'space-between',
        'align-items': 'end',
      }),
    );
  }
}
