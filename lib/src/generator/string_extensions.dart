extension StringExtension on String {
  String toConstructor() => "${this[0].toLowerCase()}${substring(1)}";

  String upperFirstChar() => replaceFirst(this[0], this[0].toUpperCase());

  String lowerFirstChar() => replaceFirst(this[0], this[0].toLowerCase());

  String camelCase() => split('_').map((str) => str.upperFirstChar()).join();
}
