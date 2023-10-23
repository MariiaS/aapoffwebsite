import '../database.dart';

class ExhibitionsTable extends SupabaseTable<ExhibitionsRow> {
  @override
  String get tableName => 'Exhibitions';

  @override
  ExhibitionsRow createRow(Map<String, dynamic> data) => ExhibitionsRow(data);
}

class ExhibitionsRow extends SupabaseDataRow {
  ExhibitionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExhibitionsTable();

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

  List<String> get imageDescriptionList =>
      getListField<String>('image_description_list');
  set imageDescriptionList(List<String>? value) =>
      setListField<String>('image_description_list', value);
}
