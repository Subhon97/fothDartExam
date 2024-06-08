import 'dart:math';
void main() {
  List<Play> instruments = [Piano(), Guitar(), Piano(), Guitar()];

  RandomIn(instruments);
}

abstract class Play {
  void play();
}

class Piano implements Play {
  @override
  void play() {
    print('Playing the piano');
  }
}

class Guitar implements Play {
  @override
  void play() {
    print('Playing the guitar');
  }
}

void RandomIn(List<Play> instruments) {
  if (instruments.isEmpty) {
    print('No instruments to play.');
    return;
  }

  final random = Random();
  int index = random.nextInt(instruments.length);
  instruments[index].play();
}


