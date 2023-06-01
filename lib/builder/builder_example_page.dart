import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/builder/pizza.dart';

class BuilderExamplePage extends StatefulWidget {
  const BuilderExamplePage({Key? key}) : super(key: key);

  @override
  State<BuilderExamplePage> createState() => _BuilderExamplePageState();
}

class _BuilderExamplePageState extends State<BuilderExamplePage> {
  int _counter = 0;
  String _pizzaName = '';

  ///
  /// Create the director
  PizzaDirector director = PizzaDirector();

  ///
  /// creates the concrete builders
  PizzaBuilder hawaiianPizzabuilder = HawaiianPizzaBuilder();
  PizzaBuilder newYorkPizzaBuilder = NewYorkPizzaBuilder();

  void _buildPizza() {
    setState(() {
      _counter++;

      if (_counter % 2 == 0) {
        ///
        /// Build hawaiian Pizza
        director.setPizzaBuilder(hawaiianPizzabuilder);
        director.makePizza();
        Pizza myPizza = director.getPizza();
        debugPrint(myPizza.toString());
        _pizzaName = myPizza.toString();
      } else {
        ///
        /// Build new York Pizza
        director.setPizzaBuilder(newYorkPizzaBuilder);
        director.makePizza();
        Pizza myPizza = director.getPizza();
        debugPrint(myPizza.toString());
        _pizzaName = myPizza.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder Pattern Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have just created another pizza: ',
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                _pizzaName,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _buildPizza,
        tooltip: 'Build Pizza',
        child: const Icon(Icons.add),
      ),
    );
  }
}
