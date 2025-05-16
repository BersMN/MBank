import 'package:flutter/material.dart';

class SelectPurpose extends StatefulWidget {
  const SelectPurpose({super.key});

  @override
  State<SelectPurpose> createState() => _SelectPurposeState();
}

class _SelectPurposeState extends State<SelectPurpose> {
  int selectedPurpose = 0;

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
              Text(
                'Select a Purpose',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Select a Method for Sending Money.',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap:
                    () => setState(() {
                      selectedPurpose = 0;
                      Navigator.pushNamed(context, '/selectpurpose2');
                    }),
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    selectedPurpose == 0
                        ? Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF304FFE),
                            ),
                          ),
                        )
                        : Container(),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(bottom: 2),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade900.withAlpha(50),
                            ),
                            child: Icon(
                              Icons.person_outline_rounded,
                              color: Colors.blue.shade900,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Personal", style: TextStyle(fontSize: 14)),
                              Text(
                                "Pay your friends and family.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color:
                                    selectedPurpose == 0
                                        ? Color(0xFF304FFE)
                                        : Colors.grey,
                              ),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    selectedPurpose == 0
                                        ? Color(0xFF304FFE)
                                        : Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap:
                    () => setState(() {
                      selectedPurpose = 1;
                      Navigator.pushNamed(context, '/selectpurpose2');
                    }),
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    selectedPurpose == 1
                        ? Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.yellow,
                            ),
                          ),
                        )
                        : Container(),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(bottom: 2),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow.shade500.withAlpha(50),
                            ),
                            child: Icon(
                              Icons.business_center_outlined,
                              color: Colors.yellow.shade600,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Business", style: TextStyle(fontSize: 14)),
                              Text(
                                "Pay your employee.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color:
                                    selectedPurpose == 1
                                        ? Colors.yellow
                                        : Colors.grey,
                              ),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    selectedPurpose == 1
                                        ? Colors.yellow
                                        : Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap:
                    () => setState(() {
                      selectedPurpose = 3;
                      Navigator.pushNamed(context, '/selectpurpose2');
                    }),
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    selectedPurpose == 2
                        ? Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.orange,
                            ),
                          ),
                        )
                        : Container(),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(bottom: 2),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange.withAlpha(50),
                            ),
                            child: Icon(
                              Icons.person_outline_rounded,
                              color: Colors.orange,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Personal", style: TextStyle(fontSize: 14)),
                              Text(
                                "Pay your friends and family.",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color:
                                    selectedPurpose == 2
                                        ? Colors.orange
                                        : Colors.grey,
                              ),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    selectedPurpose == 2
                                        ? Colors.orange
                                        : Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
