import 'package:flutter/material.dart';
import 'package:unisex/utils/saloon.dart';

class Search extends SearchDelegate {
  final List<Saloon> saloons;

  Search({required this.saloons});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: saloons.length,
      itemBuilder: (context, index) {
        return (saloons[index].name.toLowerCase().contains(query.trim().toLowerCase()) | saloons[index].location.toLowerCase().contains(query.trim().toLowerCase()))
            ? ListTile(
                minLeadingWidth: 1.0,
                // contentPadding: const EdgeInsets.all(2.0),
                leading: Icon(
                  Icons.location_on_outlined,
                  size: 35.0,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  saloons[index].name,
                  overflow: TextOverflow.fade,
                  // controller.saloons[index].name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                subtitle: Text(saloons[index].location,
                    overflow: TextOverflow.fade,
                    // controller.saloons[index].location,
                    style: Theme.of(context).textTheme.titleSmall),
              )
            : Container();
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: saloons.length,
      itemBuilder: (context, index) {
        return (saloons[index].name.toLowerCase().contains(query.trim().toLowerCase()) | saloons[index].location.toLowerCase().contains(query.trim().toLowerCase()))
            ? ListTile(
                minLeadingWidth: 1.0,
                // contentPadding: const EdgeInsets.all(2.0),
                leading: Icon(
                  Icons.location_on_outlined,
                  size: 35.0,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  saloons[index].name,
                  overflow: TextOverflow.fade,
                  // controller.saloons[index].name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )
            : Container();
      },
    );
  }
}
