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
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            state.loading
                ? const Center(child: CircularProgressIndicator())
                : state.sample != null
                    ? Image.network(
                        state.sample!.urlGif,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          return loadingProgress == null
                              ? child
                              : Center(
                                  child: CircularProgressIndicator(
                                    value:
                                        loadingProgress.cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!,
                                  ),
                                );
                        },
                      )
                    : Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _Text(state: state)),
                _Buttons(cubit: cubit),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({required this.cubit});
  final SampleCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilledButton(
            onPressed: () => cubit.request('yes'),
            child: const Text('YES'),
          ),
          FilledButton(
            onPressed: () => cubit.request(null),
            child: const Text('?'),
          ),
          FilledButton(
            onPressed: () => cubit.request('maybe'),
            child: const Text('MAYBE'),
          ),
        ],
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({required this.state});
  final SampleState state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (state.sample != null)
          ? Text(
              state.sample!.answer,
              style: const TextStyle(
                fontSize: 124,
                fontWeight: FontWeight.bold,
                color: Colors.white24,
              ),
            )
          : null,
    );
  }
}
