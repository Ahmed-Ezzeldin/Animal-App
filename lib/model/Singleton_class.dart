// Test of Singleton design pattern

class MySingleton {
  MySingleton._();
  // static final MySingleton instance = MySingleton._();
  static final MySingleton _instance = MySingleton._();
  factory MySingleton() => _instance;

  // _name variable is for test
  String? _name;
  // Getter (for name)
  String? get name => _name;
  // Setter (for name)
  void setName(String name) {
    _name = name;
  }
}

// ========================================= create instance by  ( Named Constructor )
// var test1 = MySingleton.instance;
// var test2 = MySingleton.instance;
// ========================================= create instance by factory ( Default Constructor )
// var test1 = MySingleton();
// var test2 = MySingleton();

// =========================================
// print(">>>> ${test1.name}");
// print(">>>> ${test2.name}");
// test1.setName("Ahmed");
// print(">>>> ${test1.name}");
// print(">>>> ${test2.name}");
// test2.setName("Ahmed 2");
// print(">>>> ${test1.name}");
// print(">>>> ${test2.name}");
