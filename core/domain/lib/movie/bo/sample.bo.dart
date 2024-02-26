import 'package:equatable/equatable.dart';

class SampleBo extends Equatable {
  SampleBo({
    required this.answer,
    required this.urlGif,
  });
  final String answer;
  final String urlGif;

  @override
  List<Object?> get props => [answer, urlGif];

  SampleBo copy({
    String? answer,
    String? urlGif,
  }) =>
      SampleBo(
        answer: answer ?? this.answer,
        urlGif: urlGif ?? this.urlGif,
      );
}
