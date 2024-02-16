import 'package:formulario/app/vos/value_object.dart';
import 'package:string_validator/string_validator.dart';

class Email implements ValueObject {
  final String _value;

  Email(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) {
      return 'Campo email não pode ser vazio';
    }

    if (!isEmail(_value)) {
      return 'Email inválido';
    }
    return null;
  }

  @override
  String toString() => _value;
}
