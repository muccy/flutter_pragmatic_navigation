import 'dart:collection';

import 'package:flutter/foundation.dart';

/// Data structure that represents the navigation stack. It notifies changes made to [items] list, even through [push]
/// and [pop] operations.
class NavigationStack<T> with ChangeNotifier {
  List<T> _items;
  NavigationStack(List<T> items) : _items = List.of(items) ?? [];

  /// Returns an immutable copy of items in this stack
  UnmodifiableListView<T> get items => UnmodifiableListView(_items);

  /// Replaces [items] with a copy of given [newItems] and notifies changes
  set items(List<T> newItems) {
    _items = List.from(newItems ?? []);
    notifyListeners();
  }

  /// Push a new [item] at the end of the stack and notifies change
  void push(T item) {
    _items.add(item);
    notifyListeners();
  }

  /// Removes last item is possible and notifies change.
  /// It returns the popped item, or null if stack was empty.
  T pop() {
    try {
      final poppedItem = _items.removeLast();
      notifyListeners();
      return poppedItem;
    } catch (e) {
      return null;
    }
  }

  /// A convenience method to map [items] with indexes.
  /// It's just like calling [items.map], just with indexes
  Iterable<O> mapItems<O>(O Function(T item, int index) f) {
    var i = 0;
    return items.map((e) => f(e, i++));
  }
}
