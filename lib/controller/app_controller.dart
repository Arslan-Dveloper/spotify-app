import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  var selectedIndex = 0.obs;

  var images = [
    "assets/images/women 5.png",
    "assets/images/man.png",
    "assets/images/women 5.png",
    "assets/images/man.png",
  ];

  var mainText = [
    'Bad Guy',
    'Scorpion',
    'Bad Guy',
    'Scorpion',
  ];

  var subHeadingText = [
    'Billie Eilish',
    'Drake',
    'Billie Eilish',
    'Drake',
  ];

  var favouriteImages = [
    "assets/images/womwn articts.png",
    "assets/images/w a 2.png",
    "assets/images/w a 3.png",
    "assets/images/w a 4.png",
    "assets/images/w a 5.png",
    "assets/images/w a 6.png",
  ];

  var favouriteText = [
    "dont smile at me",
    "As It Was",
    "Super Freaky Girl",
    "Bad Habit",
    "Planet Her",
    "Sweetest Pie",
  ];

  var favouriteSubText = [
    "Billie Eilish",
    "Harry Styles",
    "Nicki Minaj",
    "Steve Lacy",
    "Doja Cat",
    "Megan Thee Stallion",
  ];

  var profileWomenPhoto = [
    "assets/images/profile womwn2.png",
    "assets/images/profile womwn 2.png",
    "assets/images/profile womwn2.png",
    "assets/images/profile womwn 2.png",
  ];

  var profileWomenText = [
    "lilbubblegum",
    "Happier Than Ever",
    "lilbubblegum",
    "Happier Than Ever",
  ];

  var currentValue = 0.0.obs;

  final player = AudioPlayer().obs;
  var duration = Duration.zero.obs;
  var position = Duration.zero.obs;
  var isPlaying = false.obs;

  String formatTime(int second) {
    return "${(Duration(seconds: second))}".split('.')[0].padLeft(8, '0');
  }

  @override
  void onInit() {
    super.onInit();
    player.value.onPlayerStateChanged.listen(
      (event) {
        isPlaying.value = event == PlayerState.playing;
      },
    );
    player.value.onDurationChanged.listen(
      (newDuration) {
        duration.value = newDuration;
      },
    );

    player.value.onPositionChanged.listen(
      (newPosition) {
        position.value=newPosition;
      },
    );
  }
}
