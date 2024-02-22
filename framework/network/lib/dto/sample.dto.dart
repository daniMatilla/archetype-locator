final class SampleDto {
  final String answer;
  final bool forced;
  final String image;

  SampleDto({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory SampleDto.fromJson(Map<String, dynamic> json) => SampleDto(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );
}
