import 'package:flutter/material.dart';
import 'package:second_app/model/simple_interest_model.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleinterestState();
}

class _SimpleinterestState extends State<SimpleInterest> {
  SimpleInterstModel? simpleInterstModel;
  final _formkey = GlobalKey<FormState>();
// Delcare variables
  double? principle;
  double? time;
  double? rate;
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text("Simple Interest"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter the principle amount";
                  }
                  return null;
                },
                onChanged: (value) {
                  principle = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter principle',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter the time";
                  }
                  return null;
                },
                onChanged: (value) {
                  time = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  rate = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate',
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //validation check
                    if (_formkey.currentState!.validate()) {}
                    setState(() {
                      simpleInterstModel = SimpleInterstModel(
                          principle: principle!, time: time!, rate: rate!);
                      interest = simpleInterstModel!.calculate();
                    });
                  },
                  child: const Text(
                    'Calculate Interest',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Simple interest  is : $interest',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
