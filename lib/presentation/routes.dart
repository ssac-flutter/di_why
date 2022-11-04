import 'package:di_why/data/count_repository.dart';
import 'package:di_why/di/di_setup.dart';
import 'package:di_why/presentation/detail/next_screen.dart';
import 'package:di_why/presentation/detail/next_view_model.dart';
import 'package:di_why/presentation/main/main_screen.dart';
import 'package:di_why/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(getIt<CountRepository>()),
          child: const MainScreen(),
        );
      },
    ),
    GoRoute(
      path: '/next',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => getIt<NextViewModel>(),
          child: const NextScreen(),
        );
      },
    ),
  ],
);
