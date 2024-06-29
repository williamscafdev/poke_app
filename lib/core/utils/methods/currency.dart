class Currency {
  Currency({
    required this.countryCode,
    required this.currencySymbol,
  });
  final String countryCode;
  final String currencySymbol;
}

class CurrencySymbol {
  static final List<Currency> _currencies = [
    Currency(countryCode: 'PE', currencySymbol: 'S/'),
    Currency(countryCode: 'CO', currencySymbol: r'$'),
  ];

  static Future<String?> getCurrencySymbol(String countryCode) async {
    final currency = _currencies.firstWhere(
      (c) => c.countryCode == countryCode,
      orElse: () => Currency(countryCode: 'PE', currencySymbol: 'S/'),
    );

    return currency.currencySymbol.isNotEmpty ? currency.currencySymbol : null;
  }
}
