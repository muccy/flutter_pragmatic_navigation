import 'package:example/app_sections/model.dart';
import 'package:example/routing/stack_item.dart';
import 'package:pragmatic_navigation/pragmatic_navigation.dart';

class AppNavigationStack extends NavigationStack<NavigationStackItem> {
  static final instance = AppNavigationStack._([
    NavigationStackItem.appSection(id: AppSection.ingredients().id),
  ]);

  AppNavigationStack._(List<NavigationStackItem> items) : super(items);
}
