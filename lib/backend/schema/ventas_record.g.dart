// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ventas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VentasRecord> _$ventasRecordSerializer =
    new _$VentasRecordSerializer();

class _$VentasRecordSerializer implements StructuredSerializer<VentasRecord> {
  @override
  final Iterable<Type> types = const [VentasRecord, _$VentasRecord];
  @override
  final String wireName = 'VentasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, VentasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.producto;
    if (value != null) {
      result
        ..add('Producto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codigo;
    if (value != null) {
      result
        ..add('Codigo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.folio;
    if (value != null) {
      result
        ..add('Folio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.piezas;
    if (value != null) {
      result
        ..add('Piezas')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sucursal;
    if (value != null) {
      result
        ..add('Sucursal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vendedor;
    if (value != null) {
      result
        ..add('Vendedor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  VentasRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VentasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Producto':
          result.producto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Codigo':
          result.codigo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Folio':
          result.folio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Piezas':
          result.piezas = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Sucursal':
          result.sucursal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Vendedor':
          result.vendedor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$VentasRecord extends VentasRecord {
  @override
  final String producto;
  @override
  final String codigo;
  @override
  final String folio;
  @override
  final int piezas;
  @override
  final String sucursal;
  @override
  final String vendedor;
  @override
  final DocumentReference<Object> reference;

  factory _$VentasRecord([void Function(VentasRecordBuilder) updates]) =>
      (new VentasRecordBuilder()..update(updates)).build();

  _$VentasRecord._(
      {this.producto,
      this.codigo,
      this.folio,
      this.piezas,
      this.sucursal,
      this.vendedor,
      this.reference})
      : super._();

  @override
  VentasRecord rebuild(void Function(VentasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VentasRecordBuilder toBuilder() => new VentasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VentasRecord &&
        producto == other.producto &&
        codigo == other.codigo &&
        folio == other.folio &&
        piezas == other.piezas &&
        sucursal == other.sucursal &&
        vendedor == other.vendedor &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, producto.hashCode), codigo.hashCode),
                        folio.hashCode),
                    piezas.hashCode),
                sucursal.hashCode),
            vendedor.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VentasRecord')
          ..add('producto', producto)
          ..add('codigo', codigo)
          ..add('folio', folio)
          ..add('piezas', piezas)
          ..add('sucursal', sucursal)
          ..add('vendedor', vendedor)
          ..add('reference', reference))
        .toString();
  }
}

class VentasRecordBuilder
    implements Builder<VentasRecord, VentasRecordBuilder> {
  _$VentasRecord _$v;

  String _producto;
  String get producto => _$this._producto;
  set producto(String producto) => _$this._producto = producto;

  String _codigo;
  String get codigo => _$this._codigo;
  set codigo(String codigo) => _$this._codigo = codigo;

  String _folio;
  String get folio => _$this._folio;
  set folio(String folio) => _$this._folio = folio;

  int _piezas;
  int get piezas => _$this._piezas;
  set piezas(int piezas) => _$this._piezas = piezas;

  String _sucursal;
  String get sucursal => _$this._sucursal;
  set sucursal(String sucursal) => _$this._sucursal = sucursal;

  String _vendedor;
  String get vendedor => _$this._vendedor;
  set vendedor(String vendedor) => _$this._vendedor = vendedor;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VentasRecordBuilder() {
    VentasRecord._initializeBuilder(this);
  }

  VentasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _producto = $v.producto;
      _codigo = $v.codigo;
      _folio = $v.folio;
      _piezas = $v.piezas;
      _sucursal = $v.sucursal;
      _vendedor = $v.vendedor;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VentasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VentasRecord;
  }

  @override
  void update(void Function(VentasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VentasRecord build() {
    final _$result = _$v ??
        new _$VentasRecord._(
            producto: producto,
            codigo: codigo,
            folio: folio,
            piezas: piezas,
            sucursal: sucursal,
            vendedor: vendedor,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
