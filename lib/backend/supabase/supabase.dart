import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://fxkeftgjkcfenyqkxjvt.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ4a2VmdGdqa2NmZW55cWt4anZ0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTUxNTU0NzgsImV4cCI6MjAxMDczMTQ3OH0.C65Dg3nzkoFIorm4JmhxwS-ngK5XZ8wwUryXzXTGGPY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
