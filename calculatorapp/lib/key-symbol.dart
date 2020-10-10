import 'calculator-key.dart';

enum KeyType { FUNCTION, OPERATOR, INTEGER }

class KeySymbol {
  final String value;
  const KeySymbol(this.value);

  static List<KeySymbol> _function = [
    Keys.clear,
    Keys.sign,
    Keys.decimal,
    Keys.percent
  ];
  static List<KeySymbol> _operators = [
    Keys.divide,
    Keys.multiply,
    Keys.subtract,
    Keys.add,
    Keys.equals
  ];

  @override
  String toString() => value;
  bool get isOperator => _operators.contains(this);
  bool get isFunction => _function.contains(this);
  bool get isInteger => !isOperator && !isFunction;

  KeyType get type => isFunction
      ? KeyType.FUNCTION
      : (isOperator ? KeyType.OPERATOR : KeyType.INTEGER);
}
