import List "mo:base/List";
import Book "book";
import Array "mo:base/Array";

actor {
  // 6. In main.mo import the type List from the Base Library and create a list that stores books.
  type Book = Book.Book;
  type List<T> = ?(T, List<T>);
  var bookList = List.nil<Book>();

  //7. In main.mo create a function called add_book that takes a book as parameter and returns nothing this function should add this book to your list. Then create a second function called get_books that takes no parameter but returns an Array that contains all books stored in the list.
  public func add_book (book : Book) : () {
    bookList := List.push<Book>(book, bookList);
    return;
  };

  public func get_books () : async [Book]{
    return List.toArray<Book>(bookList);
  }
}