import 'package:flutter/material.dart';


class UnitDropdown extends StatelessWidget {
  const UnitDropdown({
    super.key,
    required this.label,
    required this.selectedUnit,
    required this.units,
    required this.onChanged,
  });
  final String label;
  final String selectedUnit; //  M
  final List<String> units; // M,KM,CM
  final ValueChanged<String?> onChanged; // selectedUnit = M or KM or CM

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: selectedUnit,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
      ),
      items: units.map(
            (unit) => DropdownMenuItem<String>(
          value: unit, // M, KM, CM
          child: Text(unit, overflow: TextOverflow.ellipsis),
        ),
      ).toList(),
      onChanged: (value){
        onChanged(value);
      },
    );
  }
}