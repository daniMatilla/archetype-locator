import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample/cubit/sample_cubit.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<SampleCubit>();
    final state = cubit.state;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (state.sample != null) Text(state.sample!.answer),
            FilledButton(
              onPressed: () => cubit.request('yes'),
              child: const Text('Request YES'),
            ),
            FilledButton(
              onPressed: () => cubit.request('maybe'),
              child: const Text('Request MAYBE'),
            ),
            FilledButton(
              onPressed: () => cubit.request(null),
              child: const Text('Request'),
            )
          ],
        ),
      ),
    );
  }
}
