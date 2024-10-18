import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class Sewa extends StatefulWidget {
  const Sewa({super.key});

  @override
  _SewaState createState() => _SewaState();
}

class _SewaState extends State<Sewa> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String _gender = 'Laki-laki'; // Default gender
  List<DateTime?> _dates = [null]; // List to store the selected date(s)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Penyewaan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama harus diisi';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(labelText: 'Umur'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Umur harus diisi';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _gender,
                decoration: const InputDecoration(labelText: 'Jenis Kelamin'),
                items: const [
                  DropdownMenuItem(
                      value: 'Laki-laki', child: Text('Laki-laki')),
                  DropdownMenuItem(
                      value: 'Perempuan', child: Text('Perempuan')),
                ],
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Widget CalendarDatePicker2
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(),
                value: _dates,
                onValueChanged: (dates) {
                  setState(() {
                    _dates = dates;
                  });
                },
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && _dates[0] != null) {
                    // Simpan data atau lakukan aksi lain
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Penyewaan berhasil')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Mohon lengkapi semua data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}