import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.cacheFailure({String? message}) = CacheFailure;
  const factory Failure.conflictFailure({
    String? message,
  }) = ConflictFailure;
  const factory Failure.connectionTimeoutFailure({
    String? message,
  }) = ConnectionTimeoutFailure;
  const factory Failure.errorParametersFailure({
    String? message,
  }) = ErrorParametersFailure;
  const factory Failure.internalServerErrorFailure({
    String? message,
  }) = InternalServerErrorFailure;
  const factory Failure.invalidCredentialFailure({
    String? message,
  }) = InvalidCredentialFailure;
  const factory Failure.localFailure({String? message}) = LocalFailure;
  const factory Failure.networkConnectionFailure({
    String? message,
  }) = NetworkConnectionFailure;
  const factory Failure.notFoundFailure({
    String? message,
  }) = NotFoundFailure;
  const factory Failure.othersFailure({String? message}) = OthersFailure;
  const factory Failure.parserErrorFailure({
    String? message,
  }) = ParserErrorFailure;
  const factory Failure.requestTimeOutFailure({
    String? message,
  }) = RequestTimeOutFailure;
  const factory Failure.serverCancelFailure({
    String? message,
  }) = ServerCancelFailure;
  const factory Failure.serverSocketFailure({
    String? message,
  }) = ServerSocketFailure;
  const factory Failure.serviceUnAvailableFailure({
    String? message,
  }) = ServiceUnAvailableFailure;
  const factory Failure.sessionExpiredFailure({
    String? message,
  }) = SessionExpiredFailure;
  const factory Failure.sessionNotFoundFailure({
    String? message,
  }) = SessionNotFoundFailure;
  const factory Failure.undefinedFailure({
    String? message,
  }) = UndefinedFailure;
  const factory Failure.undefinedOrUrlNotExistFailure({
    String? message,
  }) = UndefinedOrUrlNotExistFailure;
  const factory Failure.registerInvalidFailure({
    String? message,
  }) = RegisterInvalidFailure;
  const factory Failure.emptyDataFailure({
    String? message,
  }) = EmptyDataFailure;
  const factory Failure.businessErrorFailure({
    String? message,
  }) = BusinessErrorFailure;
}
