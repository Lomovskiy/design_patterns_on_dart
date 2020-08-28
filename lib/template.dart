abstract class Sportsman {

  void warmUp();

  void mainWork();

  void coolDown();

  void doWorkout() {
    warmUp();
    mainWork();
    coolDown();
  }

}

class Runner extends Sportsman {

  @override
  void coolDown() {
    print('Беговая разминка.');
  }

  @override
  void mainWork() {
    print('Интервальный бег 4 раза по 500 метров.');
  }

  @override
  void warmUp() {
    print('Растяжка ног.');
  }

}

class Bodybuilder extends Sportsman {

  @override
  void coolDown() {
    print('Суставная разминка.');
  }

  @override
  void mainWork() {
    print('Жим штанги.');
  }

  @override
  void warmUp() {
    print('Растяжка грудных мышц.');
  }

}

class Cyclist extends Sportsman {

  @override
  void coolDown() {
    print('Проверка велосипеда.');
  }

  @override
  void mainWork() {
    print('Езда по горной местности.');
  }

  @override
  void warmUp() {
    print('Смазка велосипеда.');
  }

}