// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_payment_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AdvancePaymentScreenViewModel
    on _AdvancePaymentScreenViewModelBase, Store {
  late final _$advancePaymentsListByUserAtom = Atom(
      name: '_AdvancePaymentScreenViewModelBase.advancePaymentsListByUser',
      context: context);

  @override
  ObservableList<AdvancePayments> get advancePaymentsListByUser {
    _$advancePaymentsListByUserAtom.reportRead();
    return super.advancePaymentsListByUser;
  }

  @override
  set advancePaymentsListByUser(ObservableList<AdvancePayments> value) {
    _$advancePaymentsListByUserAtom
        .reportWrite(value, super.advancePaymentsListByUser, () {
      super.advancePaymentsListByUser = value;
    });
  }

  late final _$createNewAdvancePaymentAsyncAction = AsyncAction(
      '_AdvancePaymentScreenViewModelBase.createNewAdvancePayment',
      context: context);

  @override
  Future<bool> createNewAdvancePayment(
      int advanceAmount,
      int startDay,
      int startMonth,
      int startYear,
      int endDay,
      int endMonth,
      int endYear,
      int userId,
      String fullName) {
    return _$createNewAdvancePaymentAsyncAction.run(() => super
        .createNewAdvancePayment(advanceAmount, startDay, startMonth, startYear,
            endDay, endMonth, endYear, userId, fullName));
  }

  late final _$getAdvancePaymentsByUserBoolAsyncAction = AsyncAction(
      '_AdvancePaymentScreenViewModelBase.getAdvancePaymentsByUserBool',
      context: context);

  @override
  Future<dynamic> getAdvancePaymentsByUserBool(int userId) {
    return _$getAdvancePaymentsByUserBoolAsyncAction
        .run(() => super.getAdvancePaymentsByUserBool(userId));
  }

  late final _$getAdvancePaymentsByUserAsyncAction = AsyncAction(
      '_AdvancePaymentScreenViewModelBase.getAdvancePaymentsByUser',
      context: context);

  @override
  Future<List<AdvancePayments>> getAdvancePaymentsByUser(int userId) {
    return _$getAdvancePaymentsByUserAsyncAction
        .run(() => super.getAdvancePaymentsByUser(userId));
  }

  @override
  String toString() {
    return '''
advancePaymentsListByUser: ${advancePaymentsListByUser}
    ''';
  }
}
