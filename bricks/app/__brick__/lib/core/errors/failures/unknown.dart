import 'failure.dart';

class UnknownFailure extends Failure {
  const UnknownFailure() : super();

  @override
  String getMsg(AppLocalizations l10n) {
    return l10n.unknownFailure;
  }
}
