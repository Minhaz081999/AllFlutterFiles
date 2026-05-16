class ConverterUnitUseCase {

  //-------- Converter Function ----------
  static double convert({
    required double value,
    required String fromUnit,
    required String toUnit,
    required String categoryName,
  }) {
    if (fromUnit == toUnit) return value;

    switch (categoryName) {
      case 'Length':
        return _convertLength(value, fromUnit, toUnit);
      case 'Weight':
        return _convertWeight(value, fromUnit, toUnit);
      case 'Temperature':
        return _convertTemperature(value, fromUnit, toUnit);
      default:
        return value;
    }
  }
  // ---------------------- For Length -------------------------------
  static double _convertLength(double value, String fromUnit, String toUnit) {
    // 1) convert first from anyUnit to Meter
    final double inMeters = _toMeters(value, fromUnit); // (1, Kilometer)-> 1000 Meter
    // 2) Then from Meter to targetUnit
    return _fromMeters(inMeters, toUnit); // (1000, Meter)-> 1000 Meter
  }

  static double _toMeters(double value, String fromUnit) {
    switch (fromUnit) {
      case 'Meter':
        return value;
      case 'Kilometer':
        return value * 1000;
      case 'Mile':
        return value * 1609.344;
      case 'Foot':
        return value * 0.3048;
      case 'Inch':
        return value * 0.0254;
      case 'Centimeter':
        return value * 0.01;
      default:
        return value;
    }
  }

  static double _fromMeters(double meters, String toUnit) {
    switch (toUnit) {
      case 'Meter':
        return meters;
      case 'Kilometer':
        return meters / 1000;
      case 'Mile':
        return meters / 1609.344;
      case 'Foot':
        return meters / 0.3048;
      case 'Inch':
        return meters / 0.0254;
      case 'Centimeter':
        return meters / 0.01;
      default:
        return meters;
    }
  }

// -------------------- For Temperature -------------------------------
  static double _convertTemperature(double value, String from, String to) {
    double celsius;
    switch (from) {
      case 'Celsius':
        celsius = value;
        break;
      case 'Fahrenheit':
        celsius = (value - 32) * 5 / 9;
        break;
      case 'Kelvin':
        celsius = value - 273.15;
        break;
      default:
        celsius = value;
    }

    switch (to) {
      case 'Celsius':
        return celsius;
      case 'Fahrenheit':
        return celsius * 9 / 5 + 32;
      case 'Kelvin':
        return celsius + 273.15;
      default:
        return celsius;
    }
  }

//---------------- For Weight --------------------------------------
  static double _convertWeight(double value, String fromUnit, String toUnit) {
    // 1) convert first Kilograms
    final double inKg = _toKilograms(value, fromUnit);
    // 2) then from Kilograms to desire Unit
    return _fromKilograms(inKg, toUnit);
  }

  static double _toKilograms(double value, String fromUnit) {
    switch (fromUnit) {
      case 'Kilogram':
        return value;
      case 'Gram':
        return value / 1000;
      case 'Pound':
        return value * 0.453592;
      case 'Ounce':
        return value * 0.0283495;
      default:
        return value;
    }
  }

  static double _fromKilograms(double kg, String toUnit) {
    switch (toUnit) {
      case 'Kilogram':
        return kg;
      case 'Gram':
        return kg * 1000;
      case 'Pound':
        return kg / 0.453592;
      case 'Ounce':
        return kg / 0.0283495;
      default:
        return kg;
    }
  }


  //.............................................
}