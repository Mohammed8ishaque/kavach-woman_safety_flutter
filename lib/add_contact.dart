import 'package:flutter/material.dart';
import 'package:kavach2/select_contact.dart';

class AddContacts extends StatefulWidget {
  @override
  _AddContactsState createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  // DatabaseHelper databaseHelper = DatabaseHelper();
  // late List<TContact> contactList;
  int count = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      //useEffect()
      // updateListView();
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (contactList == null) {
    //   // contactList = <TContact>[];
    // }
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Trusted Contacts",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12, width: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonTheme(
              height: 70,
              minWidth: double.infinity,
              child: RaisedButton.icon(
                onPressed: () {
                  navigateToSelectContact();
                },
                elevation: 10,
                highlightElevation: 15,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                label: Text(
                  'Add a Trusted Contact',
                  style: TextStyle(fontSize: 25),
                ),
                icon: Icon(
                  Icons.contacts,
                  color: Colors.white,
                  size: 35,
                ),
                textColor: Colors.white,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " +91 9854627854",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Contact Name",
                                  style: TextStyle(fontSize: 20)),
                              Text("Added Succcessfully"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " +91 8854976132",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Contact Name",
                                  style: TextStyle(fontSize: 20)),
                              Text("Added Succcessfully"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // child: getContactListView(),
              // padding: const EdgeInsets.all(20.0),
            ),
          ],
        ),
      ),
    );
  }

  ListView getContactListView() {
    TextStyle? titleStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            title: Text(
              "contact 1",
              style: titleStyle,
            ),
            subtitle: Text("contact 1"), // this.contactList[position].number
            trailing: IconButton(
                icon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                tooltip: 'Delete Contact',
                onPressed: () {
                  // _deleteContact(context, contactList[position]);
                }),
            onTap: () {
              // log("ListTile Tapped");
            },
          ),
        );
      },
    );
  }

  void navigateToSelectContact() async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SelectContact();
    }));

    if (result == true) {
      // updateListView();
    }
  }

  // void _deleteContact(BuildContext context, TContact contact) async {
  //   int result = await databaseHelper.deleteContact(contact.id);
  //   if (result != 0) {
  //     log('Contact Removed Successfully');
  //     updateListView();
  //   }
  // }
  //
  // void updateListView() {
  //   final Future<Database> dbFuture = databaseHelper.initializeDatabase();
  //   dbFuture.then((database) {
  //     Future<List<TContact>> contactListFuture =
  //         databaseHelper.getContactList();
  //     contactListFuture.then((contactList) {
  //       setState(() {
  //         this.contactList = contactList;
  //         this.count = contactList.length;
  //       });
  //     });
  //   });
  // }
}
