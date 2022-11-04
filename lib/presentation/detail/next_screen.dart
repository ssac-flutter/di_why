import 'package:di_why/presentation/detail/next_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NextViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('DI'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.next_plan_outlined),
          )
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => viewModel.increment(),
          child: Text(
            '${viewModel.count}',
            style: const TextStyle(fontSize: 70),
          ),
        ),
      ),
    );
  }
}
