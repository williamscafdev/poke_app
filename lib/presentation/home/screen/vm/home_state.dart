part of 'home_vm.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeStateLoading;
  const factory HomeState.initial() = _HomeStateInitial;
  const factory HomeState.success() = _HomeStateSuccess;
  const factory HomeState.error(String? message) = _HomeStateError;
}
