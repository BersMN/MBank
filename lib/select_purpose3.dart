import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectPurpose3 extends StatefulWidget {
  const SelectPurpose3({super.key});

  @override
  State<SelectPurpose3> createState() => _SelectPurpose3State();
}

class _SelectPurpose3State extends State<SelectPurpose3> {
  bool isPaid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white.withAlpha(240),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isPaid)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withAlpha(30),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[900],
                          shape: BoxShape.circle,
                        ),
                        margin: const EdgeInsets.only(right: 4),
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      Text(
                        "Transaction Complete! - ${DateFormat('dd MMM yyyy \'at\' hh:mm a').format(DateTime.now())}",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              if (!isPaid)
                Text(
                  'Select a Purpose',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              if (!isPaid)
                Text(
                  'Select a Method for Sending Money.',
                  style: TextStyle(color: Colors.grey),
                ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade100,
                      ),
                    ),
                    Text("Mehadi Hasan"),
                    Text(
                      "helloyouthmind@gmail.com",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    if (isPaid)
                      Text(
                        "Coinpay Transaction ID: JD890KQ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF304FFE),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Choose Account", style: TextStyle(fontSize: 16)),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 32,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade200,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(
                        Icons.payment,
                        size: 14,
                        color: Colors.orange,
                      ),
                    ),
                    Text("Account ************3994"),
                    Spacer(),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF304FFE)),
                      ),
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF304FFE),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (!isPaid)
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: TextButton(
                    onPressed: () => setState(() => isPaid = true),
                    child: Text("Pay \$500"),
                  ),
                ),
              if (isPaid)
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/homepage'),
                    child: Text("Back to Homepage"),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
