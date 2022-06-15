import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ventas_record.g.dart';

abstract class VentasRecord
    implements Built<VentasRecord, VentasRecordBuilder> {
  static Serializer<VentasRecord> get serializer => _$ventasRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Producto')
  String get producto;

  @nullable
  @BuiltValueField(wireName: 'Codigo')
  String get codigo;

  @nullable
  @BuiltValueField(wireName: 'Folio')
  String get folio;

  @nullable
  @BuiltValueField(wireName: 'Piezas')
  int get piezas;

  @nullable
  @BuiltValueField(wireName: 'Sucursal')
  String get sucursal;

  @nullable
  @BuiltValueField(wireName: 'Vendedor')
  String get vendedor;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VentasRecordBuilder builder) => builder
    ..producto = ''
    ..codigo = ''
    ..folio = ''
    ..piezas = 0
    ..sucursal = ''
    ..vendedor = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ventas');

  static Stream<VentasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VentasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  VentasRecord._();
  factory VentasRecord([void Function(VentasRecordBuilder) updates]) =
      _$VentasRecord;

  static VentasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVentasRecordData({
  String producto,
  String codigo,
  String folio,
  int piezas,
  String sucursal,
  String vendedor,
}) =>
    serializers.toFirestore(
        VentasRecord.serializer,
        VentasRecord((v) => v
          ..producto = producto
          ..codigo = codigo
          ..folio = folio
          ..piezas = piezas
          ..sucursal = sucursal
          ..vendedor = vendedor));
