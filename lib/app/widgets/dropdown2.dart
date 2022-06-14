import 'package:aqibproject1/app/data/constants.dart';
import 'package:aqibproject1/app/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = '1';
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      width: 38.w,
      decoration: BoxDecoration(
        color: knewbor,
        borderRadius: BorderRadius.circular(kRadius),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: kBlack,
            size: 10,
          ),
          elevation: 16,
          style: const TextStyle(color: kgrey),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: Text(
                  value,
                  style: kbutStyleDevice.copyWith(color: kBlack),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
