import 'package:flutter/material.dart';
import 'package:notes_supabase/notes_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // Inisialisasi Supabase
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://grhesycybpckhszleypm.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdyaGVzeWN5YnBja2hzemxleXBtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI5NjAyNTQsImV4cCI6MjA0ODUzNjI1NH0.UMad1FzMkbzwUHO42O1_0VS8x_8_INGBOYfNqnHtvCs',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengatur tema aplikasi
      ),
      home: const NotesPage(),
    );
  }
}