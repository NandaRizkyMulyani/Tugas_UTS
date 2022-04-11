import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('Belajar Routing'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Inbox');
              },
              child: Text('Inbox'),
            ),
          ],
        ),
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  //Profil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Container(child: Text('Today', style: TextStyle(color: Colors.black))),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                100,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: Icon(Icons.account_circle, size: 50),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Nanda",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "12.12",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "Hallo, How Are you?",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("this is gmail app using flutter !!!!!"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}
