import 'package:flutter/material.dart';
import 'package:raspberry_app/styles.dart';
import 'package:raspberry_app/widgets/text.dart';

class FamilyScreen extends StatelessWidget {
  FamilyScreen({super.key});

  List familyMembers = [
    {
      "name": "John Doe",
      "age": 35,
      "relationship": "Father",
      "occupation": "Engineer",
      "phone": "9878223456",
      "email": "john@example.com"
    },
    {
      "name": "Jane Doe",
      "age": 32,
      "relationship": "Mother",
      "occupation": "Teacher",
      "phone": "9878223456",
      "email": "jane@example.com"
    },
    {
      "name": "Emily Doe",
      "age": 10,
      "relationship": "Daughter",
      "phone": "9878223456",
      "grade": 5,
      "email": "emily@example.com"
    },
    {
      "name": "Michael Doe",
      "age": 8,
      "relationship": "Son",
      "phone": "9878223456",
      "grade": 2,
      "email": "michael@example.com"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLight,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text('RHYTHM',
            style: AppTextStyles.heading5Bold.copyWith(
              color: Colors.white,
              letterSpacing: 3,
              fontFamily: 'Poppins',
            )),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                size: 20,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Family Member',
                style: AppTextStyles.heading6Bold
                    .copyWith(color: Colors.white, fontFamily: 'Poppins'),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Member Code',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                                fontSize: 16)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Family Members',
                style: AppTextStyles.heading6Bold
                    .copyWith(color: Colors.grey, fontFamily: 'Poppins'),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 450,
                child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: familyMembers
                        .map(
                          (e) => Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(
                                    Icons.person_outline,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['name'],
                                          style: AppTextStyles.heading6Bold
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16),
                                          textAlign: TextAlign.start,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          e['phone'],
                                          style: AppTextStyles.heading6Bold
                                              .copyWith(
                                                  color: Colors.grey,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                      //color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Icon(
                                    Icons.delete_outline,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
