import 'package:{{name.snakeCase()}}/l10n/l10n.dart';

export 'package:{{name.snakeCase()}}/l10n/l10n.dart';

abstract class Failure {
  const Failure({
    this.message,
  });

  final String? message;

  String getMsg(AppLocalizations l10n);
}
