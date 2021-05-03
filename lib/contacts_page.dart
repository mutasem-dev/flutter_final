import 'package:flutter/material.dart';
class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: 0,//replace 0 with the correct length
        itemBuilder: (context, index) {
          return ListTile(

            onTap: () {
              //code to to open the DetailsPage
            },
            onLongPress: () {
              //code to call show dialog to edit contact
            },

            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(''),//show the first letter of the contact name
            ),
            title: Text(''),//show contact name
            trailing: IconButton(
              onPressed: () {
                //code to delete the contact from the database
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //code to call show dialog to add contact
        },
        child: Icon(Icons.add),
      ),
    );
  }
  _showDialog(BuildContext context)  {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    showDialog (
      context: context,
      builder: (context) {

        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name'
                ),
              ),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: 'Phone'
                ),
              ),
            ],
          ),
          actions: [
            RaisedButton(
              child: Text('button'),
              onPressed: () {
                //required code here

                Navigator.of(context).pop();
              }
            ),
          ],
        );
      },
    );
  }

}
