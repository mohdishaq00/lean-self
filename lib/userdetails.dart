import 'package:flutter/material.dart';

class UserdetailsPage extends StatefulWidget {
  const UserdetailsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserdetailsPageState createState() => _UserdetailsPageState();
}

class _UserdetailsPageState extends State<UserdetailsPage> {
  // ignore: unused_field
  String? _selectedGender;

  // class _DropdownTextFieldState extends State<DropdownTextField> {
  String? selectedValue;
  final List<String> options = [
    'SSLC',
    'Higher Secondary',
    'UG',
    'PG',
    'Others',
  ];
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          const Padding(
              padding: EdgeInsets.only(
            top: 25,
          )),
          const Center(
            child: Text(
              'Let Us Know You',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            children: [
              const SizedBox(
                width: 240,
              ),
              // Padding(
              // padding: const EdgeInsets.only( top: 20),
              // child:
              Container(
                width: 450, height: 600,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 239, 239, 239),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.2), // Shadow color
                  //     spreadRadius: 3, // Spread of the shadow
                  //     blurRadius: 5, // Blur effect
                  //     offset: const Offset(
                  //         -4, 4), // Shadow positioned to bottom-left
                  //   ),
                  // ],
                ), // White background for the page
                padding: const EdgeInsets.all(50.0), // Padding around the form
                child: Column(
                  children: [
                    const Text(
                      'WELCOME',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 128, 116)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Name Field
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: const TextStyle(color: Colors.grey),
                        // hintText: 'Enter your name',
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(30.0), // Circular border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black, width: 0.1), // Border color
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 3, 128, 116),
                              width: 2.0), // Border color when focused
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when focused
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16.0), // Spacing between fields

                    TextField(
                      controller: textController,
                      readOnly: true, // Prevent typing
                      decoration: InputDecoration(
                        hintText: 'Qualification',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(30.0), // Circular border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black, width: 0.1), // Border color
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 3, 128, 116),
                              width: 2.0), // Border color when focused
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when focused
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedValue,
                            //  hint: Icon(Icons.arrow_drop_down),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue;
                                textController.text =
                                    newValue ?? ''; // Update text field
                              });
                            },
                            items: options
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),

                    // Email Field
                    // DropdownButton<String>(
                    //   value: selectedValue,
                    //   hint: Text('Select an option'),
                    //   onChanged: (String? newValue) {
                    //     setState(() {
                    //       selectedValue = newValue;
                    //       textController.text = newValue ??
                    //           ''; // Update text field with selected value
                    //     });
                    //   },
                    //   items:
                    //       options.map<DropdownMenuItem<String>>((String value) {
                    //     return DropdownMenuItem<String>(
                    //       value: value,
                    //       child: Text(value),
                    //     );
                    //   }).toList(),
                    // ),
                    // TextField(

                    //   decoration: InputDecoration(
                    //     hintText: 'Qualification',
                    //     hintStyle: const TextStyle(color: Colors.grey),
                    //     // hintText: 'Enter your email',
                    //     border: OutlineInputBorder(
                    //       borderRadius:
                    //           BorderRadius.circular(30.0), // Circular border
                    //     ),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderSide: const BorderSide(
                    //           color: Colors.black, width: 0.1), // Border color
                    //       borderRadius: BorderRadius.circular(
                    //           30.0), // Circular border when enabled
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide: const BorderSide(
                    //           color: Color.fromARGB(255, 3, 128, 116),
                    //           width: 2.0), // Border color when focused
                    //       borderRadius: BorderRadius.circular(
                    //           30.0), // Circular border when focused
                    //     ),
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //   ),
                    //   keyboardType: TextInputType.emailAddress,
                    // ),
                    const SizedBox(height: 16.0),

                    // Phone Field
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: const TextStyle(color: Colors.grey),
                        // hintText: 'Enter your phone number',
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(30.0), // Circular border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black, width: 0.1), // Border color
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 3, 128, 116),
                              width: 2.0), // Border color when focused
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when focused
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.phone,
                    ),

                    const SizedBox(
                      height: 14.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'City',
                        hintStyle: const TextStyle(color: Colors.grey),
                        // hintText: 'Enter your phone number',
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(30.0), // Circular border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.black, width: 0.1), // Border color
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 3, 128, 116),
                              width: 2.0), // Border color when focused
                          borderRadius: BorderRadius.circular(
                              30.0), // Circular border when focused
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.phone,
                    ),

                    const SizedBox(height: 14.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Gender Selection
                        Column(
                          children: [
                            // const Text(
                            //   'Select Gender:',
                            //   style: TextStyle(fontSize: 16),
                            // ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedGender = 'Male';
                                    });
                                  },
                                  child: Text(
                                    'Male',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: _selectedGender == 'Male'
                                          ? const Color.fromARGB(
                                              255, 3, 128, 116)
                                          : Colors.black,
                                      fontWeight: _selectedGender == 'Male'
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  '/',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedGender = 'Female';
                                    });
                                  },
                                  child: Text(
                                    'Female',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: _selectedGender == 'Female'
                                          ? const Color.fromARGB(
                                              255, 3, 128, 116)
                                          : Colors.black,
                                      fontWeight: _selectedGender == 'Female'
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(
                            width: 16.0), // Spacing between the boxes
                        SizedBox(
                          width: 100,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Age',
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 0.1), // Border color
                                borderRadius: BorderRadius.circular(
                                    30.0), // Circular border when enabled
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 3, 128, 116),
                                    width: 2.0), // Border color when focused
                                borderRadius: BorderRadius.circular(
                                    30.0), // Circular border when focused
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16.0),

                    // Submit Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {
                        // Handle form submission
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(
                                              255, 3, 128, 116),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(width: 20,),
              Container(
                height: 600,
                width: 450,
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 186, 170, 170),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4), // Shadow color
                      spreadRadius: 2, // Spread of the shadow
                      blurRadius: 4, // Blur effect
                      offset: const Offset(
                          -4, 4), // Shadow positioned to bottom-left
                    ),
                  ],

                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/image copy 3.png'), // Use AssetImage for local images
                    fit: BoxFit
                        .cover, // Ensures the image covers the entire container
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
