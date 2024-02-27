import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:locator/locator.dart';
import 'package:domain/movie/bo/sample.bo.dart';
import 'package:sample/cubit/sample_cubit.dart';

class SampleScreen extends BaseStatelessWidget {
  SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<SampleCubit>();
    final state = cubit.state;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        actions: [
          if (state.sample != null)
            IconButton(
              onPressed: () => cubit.toggleFavorite(state.sample!),
              icon: Icon(
                state.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: state.isFavorite ? Colors.red : null,
              ),
            ),
        ],
      ),
      body: state.sample != null ? _GifView(sample: state.sample!) : const Center(child: Text('Request a 🎁')),
      floatingActionButton: _Buttons(cubit: cubit),
    );
  }
}

class _GifView extends StatelessWidget {
  const _GifView({required this.sample});
  final SampleBo sample;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      sample.urlGif,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress != null
            ? const Center(child: CircularProgressIndicator())
            : Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  child,
                  Center(
                    child: Text(
                      sample.answer,
                      style: const TextStyle(fontSize: 124, fontWeight: FontWeight.bold, color: Colors.white24),
                    ),
                  )
                ],
              );
      },
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({required this.cubit});
  final SampleCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      direction: Axis.vertical,
      children: [
        FloatingActionButton(onPressed: () => cubit.request('yes'), child: const Text('YES')),
        FloatingActionButton(onPressed: () => cubit.request(null), child: const Text('?')),
        FloatingActionButton(onPressed: () => cubit.request('maybe'), child: const Text('MAYBE')),
      ],
    );
  }
}
