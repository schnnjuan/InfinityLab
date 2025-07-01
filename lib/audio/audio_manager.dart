import 'package:audioplayers/audioplayers.dart';

class AudioManager {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playSuccessSound() async {
    // Usando o arquivo .wav para sucesso
    await _audioPlayer.play(AssetSource('audio/success.wav'));
  }

  Future<void> playFailureSound() async {
    // Usando o arquivo .ogg para falha
    await _audioPlayer.play(AssetSource('audio/error.ogg'));
  }
}
