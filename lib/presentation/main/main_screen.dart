import 'package:di_why/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.isShowAd ? '광고 있음' : '없음'),
        actions: [
          IconButton(
            onPressed: () {
              context.push('/next');
            },
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
