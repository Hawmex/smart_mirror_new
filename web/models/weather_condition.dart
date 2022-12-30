class WeatherCondition {
  final String dayText;
  final String nightText;
  final String dayIcon;
  final String nightIcon;

  const WeatherCondition._({
    required this.dayText,
    required this.nightText,
    required this.dayIcon,
    required this.nightIcon,
  });

  factory WeatherCondition.fromCode(final int code) {
    switch (code) {
      case 1000:
        return const WeatherCondition._(
          dayText: 'آفتابی',
          nightText: 'صاف',
          dayIcon: 'clear_day',
          nightIcon: 'clear_night',
        );
      case 1003:
        return const WeatherCondition._(
          dayText: 'کمی ابری',
          nightText: 'کمی ابری',
          dayIcon: 'partly_cloudy_day',
          nightIcon: 'partly_cloudy_night',
        );
      case 1006:
      case 1009:
        return const WeatherCondition._(
          dayText: 'ابری',
          nightText: 'ابری',
          dayIcon: 'cloudy',
          nightIcon: 'cloudy',
        );
      case 1030:
        return const WeatherCondition._(
          dayText: 'غبارآلود',
          nightText: 'غبارآلود',
          dayIcon: 'water',
          nightIcon: 'water',
        );
      case 1063:
        return const WeatherCondition._(
          dayText: 'احتمال رگبار باران',
          nightText: 'احتمال رگبار باران',
          dayIcon: 'rainy',
          nightIcon: 'rainy',
        );
      case 1066:
        return const WeatherCondition._(
          dayText: 'احتمال رگبار برف',
          nightText: 'احتمال رگبار برف',
          dayIcon: 'weather_snowy',
          nightIcon: 'weather_snowy',
        );
      case 1069:
        return const WeatherCondition._(
          dayText: 'احتمال رگبار بوران',
          nightText: 'احتمال رگبار بوران',
          dayIcon: 'grains',
          nightIcon: 'grains',
        );
      case 1072:
        return const WeatherCondition._(
          dayText: 'احتمال بارش نم نم باران',
          nightText: 'احتمال بارش نم نم باران',
          dayIcon: 'water_drop',
          nightIcon: 'water_drop',
        );
      case 1087:
        return const WeatherCondition._(
          dayText: 'احتمال بارش تندری',
          nightText: 'احتمال بارش تندری',
          dayIcon: 'thunderstorm',
          nightIcon: 'thunderstorm',
        );
      case 1114:
        return const WeatherCondition._(
          dayText: 'برف و بوران',
          nightText: 'برف و بوران',
          dayIcon: 'air',
          nightIcon: 'air',
        );
      case 1117:
        return const WeatherCondition._(
          dayText: 'کولاک',
          nightText: 'کولاک',
          dayIcon: 'snowing',
          nightIcon: 'snowing',
        );
      case 1135:
      case 1147:
        return const WeatherCondition._(
          dayText: 'مه‌آلود',
          nightText: 'مه‌آلود',
          dayIcon: 'water',
          nightIcon: 'water',
        );
      case 1150:
      case 1153:
      case 1168:
      case 1171:
        return const WeatherCondition._(
          dayText: 'باران نم نم',
          nightText: 'باران نم نم',
          dayIcon: 'water_drop',
          nightIcon: 'water_drop',
        );
      case 1180:
      case 1183:
      case 1186:
      case 1189:
      case 1192:
      case 1195:
      case 1198:
      case 1201:
      case 1240:
      case 1243:
      case 1246:
        return const WeatherCondition._(
          dayText: 'بارش باران',
          nightText: 'بارش باران',
          dayIcon: 'rainy',
          nightIcon: 'rainy',
        );
      case 1204:
      case 1207:
      case 1249:
      case 1252:
        return const WeatherCondition._(
          dayText: 'بارش بوران',
          nightText: 'بارش بوران',
          dayIcon: 'grains',
          nightIcon: 'grains',
        );
      case 1210:
      case 1213:
      case 1216:
      case 1219:
      case 1222:
      case 1225:
      case 1255:
      case 1258:
        return const WeatherCondition._(
          dayText: 'بارش برف',
          nightText: 'بارش برف',
          dayIcon: 'weather_snowy',
          nightIcon: 'weather_snowy',
        );
      case 1237:
      case 1261:
      case 1264:
        return const WeatherCondition._(
          dayText: 'بارش تگرگ',
          nightText: 'بارش تگرگ',
          dayIcon: 'grains',
          nightIcon: 'grains',
        );
      case 1273:
      case 1276:
        return const WeatherCondition._(
          dayText: 'بارش باران با تندر',
          nightText: 'بارش باران با تندر',
          dayIcon: 'thunderstorm',
          nightIcon: 'thunderstorm',
        );
      case 1279:
      case 1282:
        return const WeatherCondition._(
          dayText: 'بارش برف با تندر',
          nightText: 'بارش برف با تندر',
          dayIcon: 'thunderstorm',
          nightIcon: 'thunderstorm',
        );
      default:
        throw RangeError.value(code);
    }
  }
}
