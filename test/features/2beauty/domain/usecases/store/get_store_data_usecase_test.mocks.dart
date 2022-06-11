// Mocks generated by Mockito 5.2.0 from annotations
// in two_beauty/test/features/2beauty/domain/usecases/store/get_store_data_usecase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:two_beauty/core/constants/connection_header.dart' as _i2;
import 'package:two_beauty/core/error/failures.dart' as _i6;
import 'package:two_beauty/features/2beauty/domain/entities/store_entity.dart'
    as _i8;
import 'package:two_beauty/features/2beauty/domain/entities/store_get_entity.dart'
    as _i7;
import 'package:two_beauty/features/2beauty/domain/repositories/store_repository.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeUri_0 extends _i1.Fake implements Uri {}

class _FakeConnectionHeaderApi_1 extends _i1.Fake
    implements _i2.ConnectionHeaderApi {}

class _FakeEither_2<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [StoreRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockStoreRepository extends _i1.Mock implements _i4.StoreRepository {
  MockStoreRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Uri get urlController =>
      (super.noSuchMethod(Invocation.getter(#urlController),
          returnValue: _FakeUri_0()) as Uri);
  @override
  set urlController(Uri? _urlController) =>
      super.noSuchMethod(Invocation.setter(#urlController, _urlController),
          returnValueForMissingStub: null);
  @override
  _i2.ConnectionHeaderApi get connectionHeaderApi => (super.noSuchMethod(
      Invocation.getter(#connectionHeaderApi),
      returnValue: _FakeConnectionHeaderApi_1()) as _i2.ConnectionHeaderApi);
  @override
  set connectionHeaderApi(_i2.ConnectionHeaderApi? _connectionHeaderApi) =>
      super.noSuchMethod(
          Invocation.setter(#connectionHeaderApi, _connectionHeaderApi),
          returnValueForMissingStub: null);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.StoreGetEntity>> getStoreData(
          String? id) =>
      (super.noSuchMethod(Invocation.method(#getStoreData, [id]),
              returnValue:
                  Future<_i3.Either<_i6.Failure, _i7.StoreGetEntity>>.value(
                      _FakeEither_2<_i6.Failure, _i7.StoreGetEntity>()))
          as _i5.Future<_i3.Either<_i6.Failure, _i7.StoreGetEntity>>);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.StoreGetEntity>>>
      getAllStoreData() => (super.noSuchMethod(
              Invocation.method(#getAllStoreData, []),
              returnValue: Future<
                      _i3.Either<_i6.Failure, List<_i7.StoreGetEntity>>>.value(
                  _FakeEither_2<_i6.Failure, List<_i7.StoreGetEntity>>()))
          as _i5.Future<_i3.Either<_i6.Failure, List<_i7.StoreGetEntity>>>);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i8.StoreEntity>> postStoreData(
          _i8.StoreEntity? storeEntity) =>
      (super.noSuchMethod(Invocation.method(#postStoreData, [storeEntity]),
          returnValue: Future<_i3.Either<_i6.Failure, _i8.StoreEntity>>.value(
              _FakeEither_2<_i6.Failure, _i8.StoreEntity>())) as _i5
          .Future<_i3.Either<_i6.Failure, _i8.StoreEntity>>);
}
