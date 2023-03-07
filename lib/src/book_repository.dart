import 'package:belajar_dart_unit_test/src/book.dart';

class BookRepository {
  void save(Book book) {
    print('Save $book');
    throw UnimplementedError('save not supported');
  }

  void update(Book book) {
    print('Update $book');
    throw UnimplementedError('update not supported');
  }

  void delete(Book book) {
    print('Delete $book');
    throw UnimplementedError('delete not supported');
  }

  Book? findById(String id) {
    print('Find book by id $id');
    throw UnimplementedError('find not supported');
  }
}
