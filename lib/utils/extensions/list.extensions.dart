extension ListExtension<T> on List<T> {
  /// Returns true if the list is null or empty.
  bool get isNullOrEmpty => isEmpty;

  /// Returns true if the list is not null or empty.
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// Returns the first element, or null if the list is null or empty.
  /// 
  /// [Function] predicate: Function to test each element for a condition.
  /// 
  T? firstWhereOrNull(bool Function(T element) predicate) {
    try {
      return firstWhere(predicate);
    } catch (e) {
      return null;
    }
  }

  /// Returns the last element, or null if the list is null or empty.
  /// 
  /// [Function] predicate: Function to test each element for a condition.
  /// 
  T? lastWhereOrNull(bool Function(T element) predicate) {
    try {
      return lastWhere(predicate);
    } catch (e) {
      return null;
    }
  }

  /// Returns a new modifiable list.
  List<T> toModifiableList() => List<T>.from(this);
}

extension IterableExtensions<T> on Iterable<T> {
  /// Return the first element that satisfies a predicate, else return a null value.
  ///
  /// [Function] predicate: Function to test each element for a condition.
  ///
  T? firstWhereOrNull(bool Function(T) predicate) {
    final val = where((element) => predicate(element));
    return val.isNotEmpty ? val.first : null;
  }

  /// Return the last element that satisfies a predicate, else return a null value.
  ///
  /// [Function] predicate: Function to test each element for a condition.
  ///
  T? lastWhereOrNull(bool Function(T) predicate) {
    final val = where((element) => predicate(element));
    return val.isNotEmpty ? val.last : null;
  }
}