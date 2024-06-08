
void main() {
  Scope();
}

Book? globalBook;

class Book {
  String title;
  String author;

  Book({required this.title, required this.author});

  void display() {
    print('Title: $title, Author: $author');
  }
}

void Scope() {
  Book localBook = Book(title: '1984', author: 'Sadriddin Ayni');

  globalBook = Book(title: ' Mockingbird', author: 'Mirzo Tursunzoda');

  print('Local Book :');
  localBook.display();

  print('Global Book :');
  globalBook?.display();
}


