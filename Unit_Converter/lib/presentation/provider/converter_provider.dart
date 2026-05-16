import 'package:flutter/cupertino.dart';
import 'package:unit_converter/core/app_strings.dart';
import 'package:unit_converter/data/model/unit_category_model.dart';
import 'package:unit_converter/domain/usecases/converter_unit_usecase.dart';

class ConverterProvider extends ChangeNotifier{

  final List<UnitCategoryModel> _categories = UnitCategoryModel.allCategory;


  int _selectedCategoryIndex = 0;
  String _inputText = '';
  String _fromUnit = '';
  String _toUnit = '';
  // for Dropdown Box
  List<String> get _currentUnits => _categories[_selectedCategoryIndex].units; // M,KM,CM


  List<UnitCategoryModel> get categories => _categories;
  int get selectedCategoryIndex => _selectedCategoryIndex;
  String get inputText => _inputText;
  String get fromUnit => _fromUnit;
  String get toUnit => _toUnit;
  List<String> get currentUnits => _currentUnits; // M,KM,CM


  ConverterProvider() {
    _fromUnit = _categories[_selectedCategoryIndex].units[0]; // Meter
    _toUnit = _categories[_selectedCategoryIndex].units[1]; // KiloMeter
  }



  // for Category Selection
  void selectCategory(int index) {
    _selectedCategoryIndex = index;
    // Use the units from the newly selected category
    _fromUnit = _categories[index].units[0];
    _toUnit = _categories[index].units[1];
    _inputText = '';
    notifyListeners();
  }

  // for Input Field
  void updateInput(String value) {
    _inputText = value;
    // for Dynamic Result call function
    result;
    notifyListeners();
  }

 // for Dropdown Box
  void updateFromUnit(String unit) {
    _fromUnit = unit;
    // for Dynamic Result call function
    result;
    notifyListeners();
  }

  // for Dropdown Box
  void updateToUnit(String unit) {
    _toUnit = unit;
    // for Dynamic Result call function
    result;
    notifyListeners();
  }

  // for Swap Buttton
  void swap() {
    final temp = _fromUnit;
    _fromUnit = _toUnit;
    _toUnit = temp;
    // for Dynamic Result call function
    result;
    notifyListeners();
  }

  // for Target answer
  String get result{
    final double? inputValue = double.tryParse(_inputText);

    if(inputValue == null ){
      return AppStrings.resultHint;
    }

    double convert = ConverterUnitUseCase.convert(
        value: inputValue,
        fromUnit: fromUnit,
        toUnit: toUnit,
        categoryName: _categories[selectedCategoryIndex].name
    );

    return _format(convert);

  }

  String _format(double value) {
    String str = value.toStringAsFixed(6);
    str = str.replaceAll(RegExp(r'0+$'), '');
    str = str.replaceAll(RegExp(r'\.$'), '');
    return str;
  }

}

