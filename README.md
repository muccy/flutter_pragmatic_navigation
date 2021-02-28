# pragmatic_navigation

A toolkit that provides the extra abstraction layer missing from Navigation 2.0.

At this time it only exposes convenience classes to work with _stack navigation_. Feel free to contact if you think that other kinds of simplification could be added.

## Stack Navigation

Useful when the entire navigation could be thought as a series of screens one after another.

### Stack

This package exposes a `NavigationStack` class that can hold a collection of generic items. It will be your _single source of truth_, so it will be need to maintain a single universally accessible instance of it.

Everytime you push an item on it, the connected router will push the corresponding page. If you pop, the router with go back one page. If you replace every item, the router will recreate all the navigation graph.

### Parser

This package exposes a `NavigationStackRouterInformationParser` class that is able to convert URL segments to stack items and viceversa.

A minimal example could be that:

```dart
class MyRouterInformationParser extends NavigationStackRouterInformationParser<MyStackItem> {
  @override
  Future<MyStackItem> itemForPathSegments(List<String> pathSegments) async {
    try {
      final key = pathSegments[0];

      MyStackItem item;
      switch (key) {
        case "home":
          item = MyStackItem.home();
          break;
        case "profile":
          item = MyStackItem.profile();
          break;
        default:
          item = MyStackItem.notFound();
          break;
      }
      return item;
    } catch (e) {
      return null;
    }
  }

  @override
  List<String> pathSegmentsForItem(MyStackItem item) => item.type;
}
```

For a more meaningful sample, please look at project's example.

### Router Delegate

This package exposes a `NavigationStackRouterDelegate` class that is designed to work with your `NavigationStack` instance. It observes the given stack and calculates the corresponding pages to render inside the navigator.

A minimal example of usage could be it:

```dart
class MyRouterDelegate extends NavigationStackRouterDelegate<MyStackItem> {
  MainRouterDelegate({@required NavigationStack<MyStackItem> stack}) : super(stack: stack);

  @override
  List<Page> pages({BuildContext context}) => stack
      .mapItems((item, index) {
          Page page;
          switch (item.type) {
              case "home":
                page = MaterialPage(
                    key: ValueKey("home"),
                    child: MyHome(),
                );
                break;
              case "profile":
                page = MaterialPage(
                    key: ValueKey("profile"),
                    child: MyProfile(),
                );
                break;
              default:
                page = MaterialPage(child: NotFound());
                break;
          }
          return page;
      })
      .toList();
}
```

For a more meaningful sample, please look at project's example.

### Putting Everything Together

Since the provided components are standard Flutter components, you can easily work with common Flutter `Router`. For example, if you need an app top-level router, you can write something like this:

```dart
MaterialApp.router(
    routerDelegate: MyRouterDelegate(stack: MyNavigationStack.instance),
    routeInformationParser: MyRouterInformationParser(),
);
```
