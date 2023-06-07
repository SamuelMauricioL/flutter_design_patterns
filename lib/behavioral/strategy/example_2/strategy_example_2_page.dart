// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/add_strategy.dart';
import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/calculator_context.dart';
import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/calculator_strategy.dart';
import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/multiply_strategy.dart';
import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/subtract_strategy.dart';

class StrategyExample2Page extends StatefulWidget {
  @override
  _StrategyExample2PageState createState() => _StrategyExample2PageState();
}

class _StrategyExample2PageState extends State<StrategyExample2Page> {
  final _formKey = GlobalKey<FormState>();
  final _aController = TextEditingController();
  final _bController = TextEditingController();
  final _contexto = CalculatorContexto(AddStrategy());

  @override
  void dispose() {
    _aController.dispose();
    _bController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _aController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Número a',
                ),
              ),
              TextFormField(
                controller: _bController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Número b',
                ),
              ),
              const SizedBox(height: 24),
              const Text('Operación:'),
              RadioListTile<CalculatorStrategy>(
                title: const Text('Suma'),
                value: AddStrategy(),
                groupValue: _contexto.calculator,
                onChanged: (value) {
                  setState(() {
                    _contexto.setCalculator(value!);
                  });
                },
              ),
              RadioListTile<CalculatorStrategy>(
                title: const Text('Resta'),
                value: SubtractStrategy(),
                groupValue: _contexto.calculator,
                onChanged: (value) {
                  setState(() {
                    _contexto.setCalculator(value!);
                  });
                },
              ),
              RadioListTile<CalculatorStrategy>(
                title: const Text('Multiplicación'),
                value: MultiplyStrategy(),
                groupValue: _contexto.calculator,
                onChanged: (value) {
                  setState(() {
                    _contexto.setCalculator(value!);
                  });
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final a = double.parse(_aController.text);
                    final b = double.parse(_bController.text);
                    final resultado = _contexto.calculate(a, b);
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Resultado'),
                        content: Text(resultado.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cerrar'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
