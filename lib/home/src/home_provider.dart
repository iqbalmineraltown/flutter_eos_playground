import 'package:flutter_eos_playground/core/core.dart';

/// Simplest possible model, with just one field.
///
/// [ChangeNotifier] is a class in `flutter:foundation`. [CounterProvider] does
/// _not_ depend on Provider.
class HomeProvider extends BaseProvider {
  int value = 0;

  void increment() {
    value += 1;
    notifyListeners();
  }
}
