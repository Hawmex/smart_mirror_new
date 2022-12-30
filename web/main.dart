import 'package:dawn/dawn.dart';

import 'stores/interaction_status_store.dart';
import 'stores/location_store.dart';
import 'stores/weather_report_store.dart';
import 'widgets/digital_watch.dart';
import 'widgets/footer.dart';
import 'widgets/stage.dart';

void main() {
  runApp(
    Provider(
      stores: [interactionStatusStore, locationStore, weatherReportStore]
          .map((final store) => store..initialize())
          .toList(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Container(
      [DigitalWatch(), Stage(), Footer()],
      style: Style({
        'display': 'grid',
        'grid-template-rows': 'max-content 1fr max-content',
        'align-items': 'center',
        'width': '100vw',
        'height': '100vh',
        'padding': '32px',
        'gap': '32px',
        'background': '#000000',
        'color': '#ffffff',
        'font-family': 'Vazirmatn RD FD',
        'font-size': '16px',
        'line-height': '1.5',
        'direction': 'rtl',
        'user-select': 'none',
        'color-scheme': 'dark',
      }),
    );
  }
}
