part of 'sample_cubit.dart';

class SampleState extends Equatable {
  const SampleState({
    this.sample,
    this.loading = false,
  });
  final SampleBo? sample;
  final bool loading;

  @override
  List<Object?> get props => [
        sample,
        loading,
      ];

  SampleState update({
    SampleBo? sample,
    bool? loading,
  }) =>
      SampleState(
        sample: sample ?? this.sample,
        loading: loading ?? this.loading,
      );
}
