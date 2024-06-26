import 'package:just_audio/just_audio.dart';

class BackgroundMusicPlayer {
  static late AudioPlayer _player1;
  static late AudioPlayer _player2;
  static late AudioPlayer _player3;
  static late AudioPlayer _player4;
  static late AudioPlayer _player5;
  static double volume1 = 0.3;
  static double volume2 = 0.7;

  static void initialize() {
    _player1 = AudioPlayer();
    _player2 = AudioPlayer();
    _player3 = AudioPlayer();
    _player4 = AudioPlayer();
    _player5 = AudioPlayer();
  }

  static Future<void> loadMusic1() async {
    await _player1.setAsset(
        "assets/audio/586098__slaking_97__free-music-background-loop-003-var-05.wav");
  }

  static Future<void> loadMusic2() async {
    await _player2.setAsset(
        "assets/audio/684712__trader_one__mpc-metronome-click-high.wav");
  }

  static Future<void> loadMusic3() async {
    await _player3.setAsset("assets/audio/19299__starrock__pen4.wav");
  }

  static Future<void> loadMusic4() async {
    await _player4.setAsset(
        "assets/audio/495337__kirkpatricklive__coach_whistle_07_rise_stop_short.wav");
  }

  static Future<void> loadMusic5() async {
    await _player5.setAsset(
        "assets/audio/495334__kirkpatricklive__coach_whistle_02_hard_stop.wav");
  }

  static Future<void> playBackgroundMusic(int number) async {
    if (number == 1) {
      await _player1.setVolume(getVolumeMusic());
      await _player1.setLoopMode(LoopMode.one);
      await _player1.play();
    }
    if (number == 2) {
      _player2.setVolume(getVolumeSound());
      _player2.play();
    }
    if (number == 3) {
      _player3.setVolume(getVolumeSound());
      _player3.play();
    }
    if (number == 4) {
      _player4.setVolume(getVolumeSound());
      _player4.play();
    }
    if (number == 5) {
      _player5.setVolume(getVolumeSound());
      _player5.play();
    }
  }

  static Future<void> stopBackgroundMusic(int number) async {
    if (number == 1) {
      await _player1.stop();
    }
    if (number == 2) {
      await _player2.stop();
    }
    if (number == 3) {
      await _player3.stop();
    }
    if (number == 4) {
      await _player4.stop();
    }
    if (number == 5) {
      await _player5.stop();
    }
  }

  static Future<void> pauseBackgroundMusic(int number) async {
    if (number == 1) {
      await _player1.pause();
    }
    if (number == 2) {
      await _player2.pause();
    }
    if (number == 3) {
      await _player3.pause();
    }
    if (number == 4) {
      await _player4.pause();
    }
    if (number == 5) {
      await _player5.pause();
    }
  }

  static Future<void> resumeBackgroundMusic(int number) async {
    if (number == 1) {
      await _player1.play();
    }
    if (number == 2) {
      await _player2.play();
    }
    if (number == 3) {
      await _player3.play();
    }
    if (number == 4) {
      await _player4.play();
    }
    if (number == 5) {
      await _player5.play();
    }
  }

  static void setVolume(double volume, int number) {
    if (number == 1) {
      volume1 = volume;
      _player1.setVolume(volume);
    }
    if (number == 2) {
      volume2 = volume;
      _player2.setVolume(volume);
      _player3.setVolume(volume);
      _player4.setVolume(volume);
      _player5.setVolume(volume);
    }
  }

  static double getVolumeMusic() {
    return volume1;
  }

  static double getVolumeSound() {
    return volume2;
  }

  static disposeBackgroundMusic() {
    _player1.dispose();
    _player2.dispose();
    _player3.dispose();
    _player4.dispose();
    _player5.dispose();
  }
}
