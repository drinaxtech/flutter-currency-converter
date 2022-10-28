import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:au_currency_converter/dashboard.dart';

class CurrencyService {
  getCurrencyString(currency) {
    if (currency == 'EUR') return 'Euro';
    if (currency == 'ALL') return 'Albanian Lek';
  }

  convertCurrency(String fromCurrency, String toCurrency, int amount, context) {
    if (fromCurrency == 'EUR') {
      switch (toCurrency) {
        case 'ALL':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => DashboardPage(
              currencyVal: amount,
              convertedCurrency: (amount * 123.72).roundToDouble(),
              currencyone: fromCurrency,
              currencytwo: toCurrency,
              isWhite: false,
            ),
          ));
      }
    }

    if (fromCurrency == 'ALL') {
      switch (toCurrency) {
        case 'EUR':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => DashboardPage(
              currencyVal: amount,
              convertedCurrency: (amount / 123.72).toStringAsFixed(2),
              currencyone: fromCurrency,
              currencytwo: toCurrency,
              isWhite: true,
            ),
          ));
      }
    }
  }
}
