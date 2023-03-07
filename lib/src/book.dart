class Book {
  String id;
  String name;
  int price;

  Book(this.id, this.name, this.price);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          other.id == id &&
          other.name == name &&
          other.price == price;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ price.hashCode;
}
