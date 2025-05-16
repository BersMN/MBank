import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(240),
      appBar: AppBar(
        backgroundColor: Color(0xFF304FFE),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.scoreboard, color: Colors.white),
          highlightColor: Colors.grey.shade400,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white),
            highlightColor: Colors.grey.shade400,
          ),
        ],
        title: SizedBox(
          height: 40,
          child: TextField(
            style: TextStyle(fontSize: 14, color: Colors.white),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(right: 12),
              fillColor: Colors.white.withAlpha(100),
              filled: true,
              prefixIcon: Icon(Icons.search, color: Colors.white),
              labelText: "Search `Payments`",
              labelStyle: TextStyle(fontSize: 12.0, color: Colors.white70),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(32.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(color: Color(0xFF304FFE), height: 230),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text("🇺🇸"),
                      ),
                      Text(
                        "US Dollar",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                        size: 14,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$20,000',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Available balance",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Icon(Icons.account_balance_wallet_rounded),
                          ),
                          Text('Add Money', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32, bottom: 16),
                    width: MediaQuery.of(context).size.width - 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue[800],
                                  ),
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -2,
                                  right: -2,
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.arrow_upward_rounded,
                                      size: 10,
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text("Send", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Container(
                          height: 28,
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.orange,
                                  ),
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -2,
                                  right: -2,
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.arrow_downward_rounded,
                                      size: 10,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text("Request", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Container(
                          height: 28,
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.account_balance_outlined,
                                color: Colors.orange,
                                size: 28,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text("Bank", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue.shade900.withAlpha(50),
                                    ),
                                    child: Icon(
                                      Icons.add_card,
                                      size: 18,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text("Spending"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "-\$500",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_right, size: 18),
                                ],
                              ),
                            ],
                          ),
                          Divider(height: 32, color: Colors.grey.shade200),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green.shade900.withAlpha(
                                        50,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.savings,
                                      size: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text("Income"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "\$3000",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_right, size: 18),
                                ],
                              ),
                            ],
                          ),
                          Divider(height: 32, color: Colors.grey.shade200),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.yellow.shade600.withAlpha(
                                        50,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.receipt_long_rounded,
                                      size: 18,
                                      color: Colors.yellow.shade700,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text("Bills"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "-\$800",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_right, size: 18),
                                ],
                              ),
                            ],
                          ),
                          Divider(height: 32, color: Colors.grey.shade200),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange.withAlpha(50),
                                    ),
                                    child: Icon(
                                      Icons.attach_money_rounded,
                                      size: 18,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text("Savings"),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "\$1000",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_right, size: 18),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.home, color: Color(0xFF304FFE)),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.playlist_add_check_circle_outlined),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF304FFE),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.qr_code_scanner_rounded,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.message_outlined),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
