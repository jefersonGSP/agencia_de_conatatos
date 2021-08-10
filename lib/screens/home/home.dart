import 'package:agenda_de_contatos/sytle.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        itemCount: 3,
        separatorBuilder: (_, index) {
          return Divider();
        },
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          Icons.star,
          color: blueTheme,
        ),
        onPressed: () {},
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.chevron_right,
          color: grayTheme,
        ),
      ),
      title: Row(
        children: [
          ClipOval(
            child: Image.asset(
              "assets/images/Nicole,jpg",
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nicole",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: grayTheme),
              ),
              Text(
                "51 11111-1111",
                style: TextStyle(
                  fontSize: 10,
                  color: grayTheme,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
