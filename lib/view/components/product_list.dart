import 'package:flutter/material.dart';
import 'package:food_tracker/view_model/prodf_view_model.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.textos,
  });

  final ProdfProvider textos;

  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> textos;

    const gap15 = SizedBox(
      width: 15,
    );

    return Expanded(
      child: ListView.separated(
          padding: const EdgeInsets.all(5),
          separatorBuilder: ((context, index) => const Divider(
                height: 5.0,
              )),
          itemCount: textos.ProdfList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(textos.ProdfList[index].id.toString()),
              background: Container(
                alignment: Alignment.centerLeft,
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Center(
                  child: Icon(
                    Icons.delete_forever,
                    color: Colors.white,
                    size: 45.0,
                  ),
                ),
              ),
              direction: DismissDirection.startToEnd,
              child: Card(
                color: Theme.of(context).colorScheme.primary,
                margin: EdgeInsets.zero,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      width: 75.0,
                      height: 75.0,
                      child: Image.network(
                          textos.ProdfList[index].image.toString(),
                          fit: BoxFit.contain),
                    ),
                  ),
                  gap15,
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textos.ProdfList[index].brand.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        Text(
                          textos.ProdfList[index].tittle.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onPrimary),
                        )
                      ]),
                  gap15,
                ]),
              ),
              onDismissed: (direction) {
                ProdfProvider().deleteUser(textos.ProdfList[index].id);
              },
            );
          }),
    );
  }
}
