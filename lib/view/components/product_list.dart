import 'package:flutter/material.dart';
import 'package:food_tracker/view_model/product_view_model.dart';
import 'package:food_tracker/view/components/card_text.dart';
import 'package:food_tracker/view/components/product_image.dart';
import 'animated_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.textos,
  });

  final ProductViewModel textos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: textos.prodList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onLongPress: () async {
              await textos.deleteDbProduct(textos.prodList[index]['id']);
            },
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Card in the list
                    Expanded(
                      flex: 4,
                      child: FittedBox(
                        child: AnimatedCard(
                          front: Card(
                              color: Theme.of(context).colorScheme.surface,
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              child: ProductImage(
                                imageUrl: textos.prodList[index]['product']
                                    .items[0].images[0]
                                    .toString(),
                              )),
                          back: Card(
                            color: Theme.of(context).colorScheme.secondary,
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Center(
                              child: CardText(
                                text: textos.prodList[index]['expirationdate']
                                    .toString(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //End Card in the grid
                    Flexible(
                      flex: 1,
                      child: Row(children: [
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: textos.prodList[index]['daystoexpire']
                                          .toString() ==
                                      'Expirado'
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.lightGreen,
                            ),
                            child: Row(children: [
                              Spacer(
                                flex: 1,
                              ),
                              Flexible(
                                flex: 4,
                                child: FittedBox(
                                  child: Text(
                                    textos.prodList[index]['daystoexpire']
                                        .toString(),
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                            ]),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ]),
                    ),
                    Flexible(
                      flex: 1,
                      child: FittedBox(
                        child: Text(
                          textos.prodList[index]['product'].items[0].brand
                              .toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
            ),
          );
        });
  }
}
