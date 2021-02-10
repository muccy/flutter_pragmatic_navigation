import 'package:flutter/widgets.dart';
import 'stack.dart';

/// A convenience abstract [RouterDelegate] set to observe a given [NavigationStack] instance.
/// Basically, you only need to override the [pages] method and to use a [RouterInformationParser] that outputs and
/// takes [NavigationStack<T>] instances.
abstract class NavigationStackRouterDelegate<T> extends RouterDelegate<NavigationStack<T>>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<NavigationStack<T>> {
  /// The managed navigation stack
  final NavigationStack<T> stack;

  /// Converts the [stack] items to [Page] instances to be used while building the actual [Navigator]
  List<Page> pages({@required BuildContext context});

  @override
  void dispose() {
    stack.removeListener(notifyListeners);
    super.dispose();
  }

  NavigationStackRouterDelegate({@required this.stack}) : super() {
    stack.addListener(notifyListeners);
  }

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: pages(context: context),
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        stack.pop();
        return true;
      },
    );
  }

  @override
  NavigationStack<T> get currentConfiguration => stack;

  @override
  Future<void> setNewRoutePath(NavigationStack<T> configuration) async {
    stack.items = configuration.items;
  }
}
