part of 'sample_cubit.dart';

class SampleState extends Equatable {
  const SampleState({
    this.sample,
    this.isFavorite = false,
  });
  final SampleBo? sample;
  final bool isFavorite;

  @override
  List<Object?> get props => [sample, isFavorite];

  SampleState update({
    SampleBo? sample,
    bool? isFavorite,
  }) =>
      SampleState(
        sample: sample ?? this.sample,
        isFavorite: isFavorite ?? this.isFavorite,
      );
}
