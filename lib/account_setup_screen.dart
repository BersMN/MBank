// ignore_for_file: prefer_final_fields, must_be_immutable

import 'package:flutter/material.dart';
import 'package:mbank/registration_bar_widget.dart';
import 'package:intl/intl.dart';

class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({super.key});

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  int _currentIndex = 0;
  bool btnEnabled = false;
  TextEditingController email = TextEditingController(),
      address = TextEditingController(),
      city = TextEditingController(),
      postcode = TextEditingController(),
      fullname = TextEditingController(),
      username = TextEditingController(),
      birthday = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      _screenEmail(),
      _screenAddress(),
      _screenPersonalInfo(),
      _screenCountry(),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed:
              () =>
                  _currentIndex == 0
                      ? Navigator.of(context).pop()
                      : setState(() {
                        _currentIndex--;
                        btnEnabled = true;
                      }),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IndexedStack(index: _currentIndex, children: screens),
                  TextButton(
                    onPressed:
                        btnEnabled
                            ? () =>
                                _currentIndex < 3
                                    ? setState(() {
                                      _currentIndex++;
                                      btnEnabled = false;
                                    })
                                    : Navigator.pushNamed(
                                      context,
                                      '/registration',
                                    )
                            : null,
                    style: TextButton.styleFrom(
                      backgroundColor:
                          btnEnabled ? Color(0xFF304FFE) : Colors.grey.shade400,
                    ),
                    child: Text("Continue"),
                  ),
                ],
              ),
            ),
            RegistrationBarWidget(
              MediaQuery.of(context).size.width / 6 * (3 + _currentIndex),
            ),
          ],
        ),
      ),
    );
  }

  Widget _screenEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add your email',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'This info needs to be accurate with your ID document.',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 20),
        Text("Email"),
        SizedBox(height: 8),
        TextField(
          controller: email,
          onChanged: (value) => setState(() => btnEnabled = value != ""),
          decoration: InputDecoration(
            labelText: 'name@example.com',
            labelStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: Icon(Icons.email_outlined, color: Colors.grey.shade400),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _screenAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Home address',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'This info needs to be accurate with your ID document.',
          style: TextStyle(color: Colors.grey),
        ),
        _addressTextField(address, "Address Line", "Mr. John Doe"),
        _addressTextField(city, "City", "City, State"),
        _addressTextField(postcode, "Postcode", "Ex: 000000"),
      ],
    );
  }

  Widget _addressTextField(
    TextEditingController controller,
    String title,
    String label,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(title),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          onChanged:
              (value) => setState(
                () =>
                    btnEnabled =
                        (address.text != "" &&
                            city.text != "" &&
                            postcode.text != ""),
              ),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Colors.grey.shade400),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }

  DateTime? selectedDate;

  Future<void> _showCustomDatePicker() async {
    DateTime selected = DateTime.now();

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: SizedBox(
            width: double.maxFinite,
            child: CalendarDatePicker(
              initialDate: selected,
              firstDate: DateTime(1900),
              lastDate: DateTime(DateTime.now().year + 1),
              onDateChanged: (DateTime date) {
                selected = date;
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Do your confirm logic here
                setState(() {
                  selectedDate = selected;
                  birthday.text = DateFormat(
                    'MM/dd/yyyy',
                  ).format(selectedDate!);
                  setState(
                    () =>
                        btnEnabled =
                            (fullname.text != "" &&
                                username.text != "" &&
                                birthday.text != ""),
                  );
                });
                Navigator.pop(context);
              },
              child: const Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  Widget _screenPersonalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add your personal info',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'This info needs to be accurate with your ID document.',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 20),
        Text("Full Name"),
        SizedBox(height: 8),
        TextField(
          controller: fullname,
          onChanged:
              (value) => setState(
                () =>
                    btnEnabled =
                        (fullname.text != "" &&
                            username.text != "" &&
                            birthday.text != ""),
              ),
          decoration: InputDecoration(
            labelText: 'Mr. John Doe',
            labelStyle: TextStyle(color: Colors.grey.shade400),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text("Username"),
        SizedBox(height: 8),
        TextField(
          controller: username,
          onChanged:
              (value) => setState(
                () =>
                    btnEnabled =
                        (fullname.text != "" &&
                            username.text != "" &&
                            birthday.text != ""),
              ),
          decoration: InputDecoration(
            labelText: 'username',
            labelStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              color: Color(0xFF304FFE),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text("Date of Birth"),
        SizedBox(height: 8),
        InkWell(
          onTap: _showCustomDatePicker,
          borderRadius: BorderRadius.circular(8),
          child: TextField(
            controller: birthday,
            enabled: false,
            decoration: InputDecoration(
              labelText: 'MM/DD/YYYY',
              labelStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.grey.shade400,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _screenCountry() {
    String selectedCountry = "Mongolia";
    final List<Map<String, String>> countries = [
      {'name': 'Mongolia', 'flag': '🇲🇳'},
      {'name': 'United States', 'flag': '🇺🇸'},
      {'name': 'Singapore', 'flag': '🇸🇬'},
      {'name': 'India', 'flag': '🇮🇳'},
    ];
    setState(() => btnEnabled = true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Country of residence',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'This info needs to be accurate with your ID document.',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 20),
        Text("Country"),
        SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedCountry,
          dropdownColor: Colors.white,
          decoration: InputDecoration(
            labelText: 'Country',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
          items:
              countries.map((country) {
                return DropdownMenuItem<String>(
                  value: country['name'],
                  child: Row(
                    children: [
                      Text(country['flag'] ?? ''),
                      SizedBox(width: 10),
                      Text(country['name'] ?? ''),
                    ],
                  ),
                );
              }).toList(),
          onChanged: (value) {
            setState(() {
              selectedCountry = value!;
            });
          },
        ),

        // InkWell(
        //   borderRadius: BorderRadius.circular(8),
        //   onTap: () {},
        //   child: Container(
        //     decoration: BoxDecoration(
        //       border: Border.all(color: Colors.grey.shade400),
        //       borderRadius: BorderRadius.circular(8),
        //     ),
        //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //     height: 56,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Row(
        //           children: [
        //             Text("🇲🇳"),
        //             Padding(
        //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //               child: Text(
        //                 selectedCountry,
        //                 style: TextStyle(fontSize: 16),
        //               ),
        //             ),
        //           ],
        //         ),
        //         Icon(
        //           Icons.keyboard_arrow_down_rounded,
        //           color: Colors.grey.shade400,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
