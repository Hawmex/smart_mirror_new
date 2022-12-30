import 'package:dawn/dawn.dart';

import '../stores/weather_report_store.dart';
import 'icon.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(final BuildContext context) {
    return ConsumerBuilder<WeatherReportStore>((final context, final store) {
      return Container(
        store.weatherReport != null
            ? [
                Icon(
                  store.weatherReport!.isDay
                      ? store.weatherReport!.condition.dayIcon
                      : store.weatherReport!.condition.nightIcon,
                  style: const Style({'font-size': '48px'}),
                ),
                Container([
                  Text(
                    '${store.weatherReport!.isDay ? store.weatherReport!.condition.dayText : store.weatherReport!.condition.nightText}، ',
                  ),
                  Text(
                    '${store.weatherReport!.temperature}°C',
                    style: const Style({
                      'direction': 'ltr',
                      'display': 'inline-flex',
                    }),
                  ),
                ]),
              ]
            : [const Text('در حال دریافت داده‌ی آب و هوا...')],
        style: const Style({
          'display': 'flex',
          'flex-flow': 'column',
          'align-items': 'end',
          'gap': '8px',
        }),
      );
    });
  }
}
