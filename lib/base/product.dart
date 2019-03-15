import 'package:flutter/material.dart';

class Product {
  const Product({this.name});

  final String name;
}

typedef void CartChangedCallback(Product prodect, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product, this.inCart, this.onCardChanged})
      : product = product,
        super(key: new ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCardChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;
    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListTile(
      onTap: () {
        onCardChanged(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  createState() => ShoppingListState();
}

class ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCard = new Set<Product>();

  void _handleCartChanged(Product prodect, bool inCart) {
    setState(() {
      if (inCart) {
        _shoppingCard.add(prodect);
      } else {
        _shoppingCard.remove(prodect);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping list'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product){
          return new ShoppingListItem(product: product,inCart: _shoppingCard.contains(product),onCardChanged: _handleCartChanged,);
        }).toList(),
      ),
    );
  }
}
