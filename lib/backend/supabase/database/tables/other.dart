import '../database.dart';

class OtherTable extends SupabaseTable<OtherRow> {
  @override
  String get tableName => 'Other';

  @override
  OtherRow createRow(Map<String, dynamic> data) => OtherRow(data);
}

class OtherRow extends SupabaseDataRow {
  OtherRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OtherTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get dateRowDescription => getField<String>('date_row description');
  set dateRowDescription(String? value) =>
      setField<String>('date_row description', value);

  String? get titleCursive => getField<String>('title_cursive');
  set titleCursive(String? value) => setField<String>('title_cursive', value);

  String? get longText => getField<String>('long_text');
  set longText(String? value) => setField<String>('long_text', value);

  List<String> get imageList => getListField<String>('image_list');
  set imageList(List<String>? value) =>
      setListField<String>('image_list', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);
}
