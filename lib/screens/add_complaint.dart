import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../database/db_helper.dart';

class AddComplaintPage extends StatefulWidget {
  final int userId;
  final Function onSubmitted;

  const AddComplaintPage({super.key, required this.userId, required this.onSubmitted});

  @override
  State<AddComplaintPage> createState() => _AddComplaintPageState();
}

class _AddComplaintPageState extends State<AddComplaintPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  String selectedCategory = 'Others';

  final List<String> categories = ['Hostel', 'Food', 'Wi-Fi', 'Electricity', 'Others'];

  Future<void> _submitComplaint() async {
    if (_formKey.currentState!.validate()) {
      final db = await DBHelper.database;
      await db.insert('complaints', {
        'user_id': widget.userId,
        'title': _titleController.text.trim(),
        'category': selectedCategory,
        'description': _descController.text.trim(),
        'timestamp': DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
        'status': 'Open',
      });

      widget.onSubmitted(); // Call callback after submission
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Complaint added.")));
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Complaint")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: "Title"),
                validator: (val) => val!.isEmpty ? "Title is required" : null,
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: selectedCategory,
                items: categories
                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                    .toList(),
                onChanged: (val) => setState(() => selectedCategory = val!),
                decoration: const InputDecoration(labelText: "Category"),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _descController,
                maxLines: 4,
                decoration: const InputDecoration(labelText: "Description"),
                validator: (val) => val!.isEmpty ? "Description is required" : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitComplaint,
                child: const Text("Submit Complaint"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
