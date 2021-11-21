import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({Key? key}) : super(key: key);

  Widget _buildHeaderWidget() {
    return const Text('\n\n\n\n\nThis is the header\n\n');
  }

  Widget _buildMainWidget() {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: const Center(
          child: Text(
            'This is the body',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildFooterWidget() {
    return const Text('\n\nThis is the footer\n\n');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildHeaderWidget(),
            _buildMainWidget(),
            _buildFooterWidget(),
          ],
        ),
      ),
    );
  }
}
