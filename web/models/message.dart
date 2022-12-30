class Message {
  final String value;
  final String? icon;
  final String? speechSource;
  final Duration? duration;

  const Message.withoutSpeech(
    this.value, {
    this.icon,
    this.duration = const Duration(seconds: 2),
  }) : speechSource = null;

  const Message.withSpeech(
    this.value, {
    required String this.speechSource,
    this.icon,
  }) : duration = null;
}
