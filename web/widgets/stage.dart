import 'dart:math';

import 'package:dawn/dawn.dart';
import 'package:shamsi_date/shamsi_date.dart';

import '../models/message.dart';
import '../models/stage_snapshot.dart';
import '../stores/interaction_status_store.dart';
import '../stores/weather_report_store.dart';
import 'stage_sequencer.dart';

class Stage extends StatelessWidget {
  const Stage({super.key});

  @override
  Widget build(final BuildContext context) {
    return ConsumerBuilder<InteractionStatusStore>(
      (final context, final store) {
        switch (store.status) {
          case InteractionStatus.none:
            return StageSequencer([
              StageSnapshot.message(const [
                Message.withoutSpeech('بیدارم کن!', icon: 'mode_standby')
              ]),
            ]);
          case InteractionStatus.sayHelloWithoutIntroQuestion:
            return StageSequencer([
              StageSnapshot.message([
                Message.withoutSpeech(
                  'سلام! ${weatherReportStore.weatherReport == null ? 'وقت' : weatherReportStore.weatherReport!.isDay ? 'روز' : 'عصر'} بخیر.',
                  icon: 'waving_hand',
                ),
                Message.withoutSpeech(
                  'سلام! روز ${Jalali.now().formatter.wN}‌ات بخیر.',
                  icon: 'chat',
                ),
              ]),
              // TODO
              // StageSnapshot.message(const [
              //   Message.withoutSpeech('امروز هوا خوب و ابریه.', icon: 'chat')
              // ]),
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'چه کاری می‌تونم برات انجام بدم؟',
                  icon: 'question_mark',
                  duration: Duration(seconds: 6),
                )
              ]),
              if (Random().nextDouble() >= 0.5)
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'راستی یه ویدیوی جذاب هم درمورد آخرین پیشرفت‌های فناوری دارم. اگه بخوای می‌تونیم با هم ببینیم.',
                    icon: 'chat',
                  ),
                ])
              else
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'اگر خسته‌ای می‌تونیم با هم به یه قطعه موسیقی گوش بدیم.',
                    icon: 'chat',
                  ),
                ]),
            ]);
          case InteractionStatus.sayHelloWithIntroQuestion:
            return StageSequencer([
              StageSnapshot.message([
                Message.withoutSpeech(
                  'سلام! ${weatherReportStore.weatherReport == null ? 'وقت' : weatherReportStore.weatherReport!.isDay ? 'روز' : 'عصر'} بخیر.',
                  icon: 'waving_hand',
                ),
                Message.withoutSpeech(
                  'سلام! روز ${Jalali.now().formatter.wN}‌ات بخیر.',
                  icon: 'chat',
                ),
              ]),
              // TODO
              // StageSnapshot.message(const [
              //   Message.withoutSpeech('امروز هوا خوب و ابریه.', icon: 'chat')
              // ]),
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'می‌خوای خودمو بهت معرفی کنم؟',
                  icon: 'question_mark',
                )
              ]),
            ]);
          case InteractionStatus.sayShortIntro:
            return StageSequencer([
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'اسم من آینه‌ی هوشمنده. میخوای بیشتر درمورد من بدونی؟',
                  icon: 'question_mark',
                )
              ]),
            ]);
          case InteractionStatus.sayReadyForCommands:
            return StageSequencer([
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'چه کاری می‌تونم برات انجام بدم؟',
                  icon: 'question_mark',
                  duration: Duration(seconds: 6),
                )
              ]),
              if (Random().nextDouble() >= 0.5)
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'راستی یه ویدیوی جذاب هم درمورد آخرین پیشرفت‌های فناوری دارم. اگه بخوای می‌تونیم با هم ببینیم.',
                    icon: 'chat',
                  ),
                ])
              else
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'اگر خسته‌ای می‌تونیم با هم به یه قطعه موسیقی گوش بدیم.',
                    icon: 'chat',
                  ),
                ]),
            ]);
          case InteractionStatus.showFullIntroVideo:
            return StageSequencer([
              StageSnapshot.video('./assets/videos/mirror_intro.mp4'),
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'می‌خوای درمورد ایرانداک بیشتر بدونی؟',
                  icon: 'question_mark',
                )
              ]),
            ]);
          case InteractionStatus.showIrandocIntroVideo:
            return StageSequencer([
              StageSnapshot.video('./assets/videos/irandoc_intro.mp4'),
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'چه کاری می‌تونم برات انجام بدم؟',
                  icon: 'question_mark',
                  duration: Duration(seconds: 6),
                )
              ]),
              if (Random().nextDouble() >= 0.5)
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'راستی یه ویدیوی جذاب هم درمورد آخرین پیشرفت‌های فناوری دارم. اگه بخوای می‌تونیم با هم ببینیم.',
                    icon: 'chat',
                  ),
                ])
              else
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'اگر خسته‌ای می‌تونیم با هم به یه قطعه موسیقی گوش بدیم.',
                    icon: 'chat',
                  ),
                ]),
            ]);
          case InteractionStatus.sayGoodbye:
            return StageSequencer([
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'خدانگهدار. راستی هفته‌ی پژوهش مبارک!',
                  icon: 'waving_hand',
                ),
                Message.withoutSpeech(
                  'روز خوبی داشته باشی.',
                  icon: 'waving_hand',
                ),
                Message.withoutSpeech(
                  'به امید دیدار.',
                  icon: 'waving_hand',
                )
              ]),
              StageSnapshot.message(const [
                Message.withoutSpeech('بیدارم کن!', icon: 'mode_standby')
              ]),
            ]);
          case InteractionStatus.showVideo:
            return StageSequencer([
              StageSnapshot.video('./assets/videos/${Random().nextInt(5)}.mp4'),
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'چه کاری می‌تونم برات انجام بدم؟',
                  icon: 'question_mark',
                  duration: Duration(seconds: 6),
                ),
              ]),
              if (Random().nextDouble() >= 0.5)
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'اگر خسته‌ای می‌تونیم با هم به یه قطعه موسیقی گوش بدیم.',
                    icon: 'chat',
                  ),
                ]),
            ]);
          case InteractionStatus.playMusic:
            return StageSequencer([
              StageSnapshot.audio('./assets/music/${Random().nextInt(4)}.mp3'),
              StageSnapshot.message(const [
                Message.withoutSpeech(
                  'چه کاری می‌تونم برات انجام بدم؟',
                  icon: 'question_mark',
                  duration: Duration(seconds: 6),
                ),
              ]),
              if (Random().nextDouble() >= 0.5)
                StageSnapshot.message(const [
                  Message.withoutSpeech(
                    'راستی یه ویدیوی جذاب هم درمورد آخرین پیشرفت‌های فناوری دارم. اگه بخوای می‌تونیم با هم ببینیم.',
                    icon: 'chat',
                  ),
                ])
            ]);
        }
      },
    );
  }
}
