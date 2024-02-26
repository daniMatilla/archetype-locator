import 'package:equatable/equatable.dart';

class SampleBo extends Equatable {
  SampleBo({
    required this.answer,
    required this.urlGif,
    this.isFavorite = false,
  });
  final String answer;
  final String urlGif;
  final bool isFavorite;

  @override
  List<Object?> get props => [answer, urlGif, isFavorite];

  SampleBo copy({
    String? answer,
    String? urlGif,
    bool? isFavorite,
  }) =>
      SampleBo(
        answer: answer ?? this.answer,
        urlGif: urlGif ?? this.urlGif,
        isFavorite: isFavorite ?? this.isFavorite,
      );
}
