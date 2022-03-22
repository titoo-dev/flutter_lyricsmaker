import 'package:flutter_lyricsmaker/model/lyrics_line.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final lyricsListProvider =
    StateNotifierProvider<LyricsListNotifier, List<LyricsLine>>(
  (ref) => LyricsListNotifier(),
);

class LyricsListNotifier extends StateNotifier<List<LyricsLine>> {
  LyricsListNotifier() : super([]);
}
