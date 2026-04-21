import 'package:financeuionly/widgets/addTransactionSheet.dart';
import 'package:financeuionly/widgets/summaryCard.dart';
import 'package:financeuionly/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Finance Ui only',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SummaryCard(),
                const SizedBox(height: 16),
                Transactioncard(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: _buildFab(context),
    );
  }

  Widget _buildFab(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => Addtransactionsheet.show(context),
      icon: const Icon(Icons.add, color: Colors.white),
      label: const Text("Tambah", style: TextStyle(color: Colors.white)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: const Color.fromARGB(255, 13, 185, 19),
    );
  }
}
