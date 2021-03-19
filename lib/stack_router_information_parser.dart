import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pragmatic_navigation/stack.dart';

/// Base class to build a URL parser from and to the [NavigationStack].
/// The only unimplemented methods are:
/// * [pathSegmentsForItem], that is called in order to build URL components from given stack item;
/// * [itemForPathSegments], that is called in order to get a stack item from a bunch of URL segments.
///
/// This parser takes an increasingly large chunk of URL segments to convert (starting from [pathSegmentsChunkStartSize]
/// and going up until [pathSegmentsChunkMaxSize]). It passes every chunk to [itemForPathSegments]. If [itemForPathSegments]
/// is able to get a stack item, it goes on. Otherwise the URL construction is aborted. You could alse override
/// [itemsForRouteInformation] to able to implement further checks on the built URL.
/// On the other way around, the parser takes each stack items and invokes [pathSegmentsForItem]. The segments are then
/// joined together to create the final URL.
abstract class NavigationStackRouterInformationParser<T> extends RouteInformationParser<NavigationStack<T>> {
  /// When [parseRouteInformation] examines the incoming URI, it takes an increasingly large chunk of segments to
  /// inspect. This number is the base size.
  /// By default it's 1. This number must be greater than 0.
  final int pathSegmentsChunkStartSize;

  /// When [parseRouteInformation] examines the incoming URI, it takes an increasingly large chunk of segments to
  /// inspect. This number is the maximum size. If it's null, it means there is no limit
  /// By default it's null. This number must be greater than 0, if not null.
  final int? pathSegmentsChunkMaxSize;
  NavigationStackRouterInformationParser({this.pathSegmentsChunkStartSize = 1, this.pathSegmentsChunkMaxSize})
      : assert(pathSegmentsChunkStartSize > 0),
        assert(pathSegmentsChunkMaxSize == null || pathSegmentsChunkMaxSize > 0),
        super();

  /// Converts the given [configuration] to an [Uri] instance.
  /// Default implementation calls [pathSegmentsForItem] for each navigation item, then assembles the URI.
  Uri uriForConfiguration(NavigationStack<T> configuration) {
    final segments = configuration.items.fold<List<String>>([""], (previousValue, item) {
      final segments = pathSegmentsForItem(item);
      return [
        ...previousValue,
        ...(segments ?? [""])
      ];
    });
    return Uri(pathSegments: segments);
  }

  /// Returns path segments for given navigation [item]. If you return null, it means you want to add an empty segment.
  /// For example, if you want to convert a `foo` item with `id=1` to `foo/1`, you need to return `["foo", "1"]`.
  List<String>? pathSegmentsForItem(T item);

  /// Returns navigation items for incoming [routeInformation].
  /// Default implementation takes the URI and explores its segments. It begins taking the first [pathSegmentsChunkStartSize]
  /// segments and asks to [itemForPathSegments] if it is able to create a navigation item. If it's not, it adds another
  /// segment to the chunk it passes to [itemForPathSegments]. At maximum, it takes [pathSegmentsChunkMaxSize], if not
  /// null.
  /// You may want to override this method if you want to provide an extra validation step to the created URI (e.g.:
  /// you want to check if succession of segments has sense or you want to prepend some implicit navigation item).
  Future<List<T>> itemsForRouteInformation(RouteInformation routeInformation) async {
    if (routeInformation.location == null) {
      return [];
    }

    final uri = Uri.parse(routeInformation.location!);
    final remainingSegments = uri.pathSegments.toList();
    final items = <T>[];

    while (remainingSegments.isNotEmpty) {
      var itemAdded = false;
      final maxLength = pathSegmentsChunkMaxSize != null
          ? min(pathSegmentsChunkMaxSize!, remainingSegments.length)
          : remainingSegments.length;
      for (var size = pathSegmentsChunkStartSize; size <= maxLength; size++) {
        final segments = remainingSegments.sublist(0, size);
        final item = await itemForPathSegments(segments);
        if (item != null) {
          remainingSegments.removeRange(0, size);
          items.add(item);
          itemAdded = true;
        }
      } // for

      if (itemAdded == false) {
        // No item added at this step. If I loop plainly, I will obtain the same result (e.g.: infinite loop). This means
        // that the examined segments are all unsuitable for parsing!
        remainingSegments.removeRange(0, maxLength);
      }
    } // while remainingSegments

    return items;
  }

  /// Returns navigation item for given [pathSegments]. You should return null if given [pathSegments] cannot be parsed
  /// to a meaningful item.
  /// This method could be invoked by [itemsForRouteInformation] multiple times with an increasing number of segments.
  Future<T?> itemForPathSegments(List<String> pathSegments);

  @override
  Future<NavigationStack<T>> parseRouteInformation(RouteInformation routeInformation) async {
    final items = await itemsForRouteInformation(routeInformation);
    return NavigationStack(items);
  }

  @override
  RouteInformation restoreRouteInformation(NavigationStack<T> configuration) =>
      RouteInformation(location: uriForConfiguration(configuration).path);
}
