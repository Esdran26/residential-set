import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:residential_set/src/global/variables.dart';
import 'package:residential_set/src/widgets/main_list_title.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  UserListState createState() => UserListState();
}

class UserListState extends State<UserList> {
  TextEditingController searchText = TextEditingController();
  ScrollController scrollController = ScrollController();
  String url = '';

  List invoiceItems = [];
  int page = 0;
  bool hasMore = true;
  bool isLoading = true;

  @override
  void initState() {
    url = 'https://jsonplaceholder.typicode.com/users';

    super.initState();

    scrollFetch();

    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        scrollFetch();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future scrollFetch() async {
    // String apiKey = widget.jsonData['apikey'].toString();
    // String companyName = searchText.text.toString();

    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List newItemsInovices = json.decode(response.body);

      setState(() {
        if (newItemsInovices.isNotEmpty) {
          page++;
          invoiceItems.addAll(newItemsInovices);
          hasMore = true;
        } else {
          hasMore = false;
        }
      });
    }
  }

  Future refresh() async {
    setState(() {
      invoiceItems.clear();
      page = 0;
      isLoading = false;
      scrollFetch();
    });
  }

  String inputChanged = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'USUARIOS',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'NunitoSans',
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: refresh,
            child: Column(
              children: [
                const MainListTitle('Usuarios'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.60,
                          child: TextField(
                            controller: searchText,
                            onChanged: (String? value) {
                              inputChanged = value!;
                            },
                            decoration: const InputDecoration(
                                hintText: 'Buscar...',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10.0)),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              setState(() {
                                searchText.text = inputChanged;
                                invoiceItems.clear();
                                page = 0;
                                isLoading = false;
                                scrollFetch();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.68,
                  child: ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    itemCount: invoiceItems.length + 1,
                    itemBuilder: (context, index) {
                      if (index < invoiceItems.length) {
                        var initData = invoiceItems[index];

                        return Column(
                          children: [
                            const SizedBox(
                              height: 7.0,
                            ),
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: ListTile(
                                leading: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xffa29bfe),
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      height: 40.0,
                                      width: 40.0,
                                      child: Icon(
                                        Icons.person,
                                        color: primaryColor,
                                      ),
                                    ),
                                    Positioned(
                                      left: 28.0,
                                      top: 28.0,
                                      child: Container(
                                        padding: const EdgeInsets.all(3.0),
                                        width: 12.0,
                                        height: 12.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                title: Column(
                                  children: [
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(initData['name'].toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'NunitoSans',
                                            fontSize: 15.0,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    )
                                  ],
                                ),
                                subtitle: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Correo ${initData['email']}',
                                        style: fontNormal,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                  ],
                                ),
                                trailing: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 3.0),
                                      backgroundColor: primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                  child: const Text('Detalles',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'NunitoSans',
                                          fontSize: 12.0,
                                          color: Colors.white)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7.0,
                            ),
                          ],
                        );
                      } else {
                        if (invoiceItems.isNotEmpty) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 32),
                            child: hasMore
                                ? Center(
                                    child: isLoading
                                        ? const CircularProgressIndicator()
                                        : null)
                                : Center(
                                    child: Text(
                                      'No hay más usuarios por mostrar',
                                      style: fontNormalBold,
                                    ),
                                  ),
                          );
                        } else {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 70.0,
                                ),
                                Image.network(
                                  'https://cuental.com/img-api/empty-contacts-cuental.png',
                                  height: 128.0,
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'No tienes usuarios agregados',
                                  style: fontBig,
                                )
                              ],
                            ),
                          );
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
