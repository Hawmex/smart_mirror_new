import 'package:dawn/dawn.dart';

import 'icon.dart';

class StageIcon extends StatelessWidget {
  final String value;

  const StageIcon(this.value, {super.key});

  @override
  Widget build(final BuildContext context) {
    return Icon(value, style: const Style({'font-size': '48px'}));
  }
}
