import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/routes/router_config.dart';
import 'package:galaxy_web3/modules/loadingpage/loading_page_srceen.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.homePage,
  routes: [
    GoRoute(
      path: Routes.homePage,
      builder: (context, state) => const LoadingPageSrceen(),
    )
  ],
);
