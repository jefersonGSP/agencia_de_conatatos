import 'package:agenda_de_contatos/models/contact.dart';
import 'package:agenda_de_contatos/provider/listOfContacts.dart';
import 'package:agenda_de_contatos/screens/home/details/details.dart';
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
        itemCount: listOfContacts.length,
        separatorBuilder: (_, index) {
          return Divider();
        },
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Contact _contact = listOfContacts.elementAt(index);
    return ListTile(
      leading: IconButton(
        icon: (_contact.isFavorite)
            ? Icon(
                Icons.star,
                color: blueTheme,
              )
            : Icon(Icons.star_outline, color: blueTheme),
        onPressed: () {
          setState(() {
            _contact.isFavorite = !_contact.isFavorite;
          });
        },
      ),
      trailing: IconButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext _) {
                return Details(_contact);
              },
            ),
          );
        },
        icon: Icon(
          Icons.chevron_right,
          color: grayTheme,
        ),
      ),
      title: Row(
        children: [
          Hero(
            tag: _contact.name,
            child: ClipOval(
              child: Image.asset(
                _contact.photo,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _contact.name,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: grayTheme),
              ),
              Text(
                _contact.phone,
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
