// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DepartmentScreenViewModel on _DepartmentScreenViewModelBase, Store {
  late final _$usedDepartmentsAtom = Atom(
      name: '_DepartmentScreenViewModelBase.usedDepartments', context: context);

  @override
  ObservableList<String> get usedDepartments {
    _$usedDepartmentsAtom.reportRead();
    return super.usedDepartments;
  }

  @override
  set usedDepartments(ObservableList<String> value) {
    _$usedDepartmentsAtom.reportWrite(value, super.usedDepartments, () {
      super.usedDepartments = value;
    });
  }

  late final _$getAllUsedDepartmentsAsyncAction = AsyncAction(
      '_DepartmentScreenViewModelBase.getAllUsedDepartments',
      context: context);

  @override
  Future<void> getAllUsedDepartments() {
    return _$getAllUsedDepartmentsAsyncAction
        .run(() => super.getAllUsedDepartments());
  }

  @override
  String toString() {
    return '''
usedDepartments: ${usedDepartments}
    ''';
  }
}
