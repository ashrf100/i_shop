import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MyBlocObserver extends BlocObserver {
  String get _timestamp =>
      DateFormat('yyyy-MM-dd – kk:mm:ss').format(DateTime.now());

  String _separator(String title) {
    return '${'═' * 15} $title ${'═' * 15}';
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('''\n
${_separator('Bloc Created')}
Timestamp: $_timestamp
Bloc Type: ${bloc.runtimeType}
${'═' * 45}\n''');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('''\n
${_separator('Bloc Closed')}
Timestamp: $_timestamp
Bloc Type: ${bloc.runtimeType}
${'═' * 45}\n''');
  }
}
