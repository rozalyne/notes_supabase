import 'package:flutter/material.dart';
import 'package:notes_supabase/notes_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // Inisialisasi Supabase
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: '',
    anonKey: '',
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