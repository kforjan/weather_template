import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter(this._goRouter);

  final GoRouter _goRouter;

  RouterDelegate<Object> get _routerDelegate => _goRouter.routerDelegate;

  RouteInformationParser<Object> get _routeInformationParser =>
      _goRouter.routeInformationParser;

  RouteInformationProvider get _routeInformationProvider =>
      _goRouter.routeInformationProvider;

  BackButtonDispatcher get _backButtonDispatcher =>
      _goRouter.backButtonDispatcher;

  RouterConfig<Object> get config => RouterConfig(
        routerDelegate: _routerDelegate,
        routeInformationParser: _routeInformationParser,
        routeInformationProvider: _routeInformationProvider,
        backButtonDispatcher: _backButtonDispatcher,
      );
}
