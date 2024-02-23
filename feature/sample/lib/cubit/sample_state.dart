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
    bool? loading,
  }) =>
      SampleState(
        sample: sample ?? this.sample,
      );
}
