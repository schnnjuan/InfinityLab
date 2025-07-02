import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  late AudioPlayer _successPlayer;
  late AudioPlayer _errorPlayer;

  AudioManager() {
    _successPlayer = AudioPlayer();
    _errorPlayer = AudioPlayer();
    _loadSounds();
  }

  Future<void> _loadSounds() async {
    await _successPlayer.setSource(AssetSource('audio/success.wav'));
    await _errorPlayer.setSource(AssetSource('audio/error.ogg'));
  }

  Future<void> playSuccessSound() async {
    await _successPlayer.resume();
  }

  Future<void> playFailureSound() async {
    await _errorPlayer.resume();
  }

  void dispose() {
    _successPlayer.dispose();
    _errorPlayer.dispose();
  }
}
