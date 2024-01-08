import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
   DropDown({
    super.key, this.onChanged, this.selected,
  });
  final dynamic onChanged;
  final dynamic selected;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12))),
    items: ["1", "2", "3", "4", "5"]
        .map((e) => DropdownMenuItem(
              value: e,
              child: Text('$e'),
            ))
        .toList(),
    hint: Text("chooseyourschool".tr()),
    onChanged:  onChanged,
   
    
    value: selected,
                  );
  }
}
