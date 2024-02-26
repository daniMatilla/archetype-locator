part of 'sample_cubit.dart';

class SampleState extends Equatable {
  const SampleState({
    this.sample,
  });
  final SampleBo? sample;

  @override
  List<Object?> get props => [sample];

  SampleState update({
    SampleBo? sample,
  }) =>
      SampleState(
        sample: sample ?? this.sample,
      );
}
