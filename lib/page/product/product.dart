import 'package:flutter/material.dart';
import '../../component/drawer/drawer.dart';
import '../../component/button/addButton.dart';
class Products extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text('Products')
            ),
            floatingActionButton: AddButton(
                onPressed: (){
                    print('cok');
                }
            ),
            drawer: AppDrawer(),
            body:Column(
                children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Product List',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold
                            ),
                        ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: DataTable(
                                columns: const <DataColumn>[
                                    DataColumn(
                                        label: Text('ID', style: TextStyle(fontStyle: FontStyle.italic),
                                        ),
                                    ),
                                    DataColumn(
                                        label: Text('Name', style: TextStyle(fontStyle: FontStyle.italic),
                                        ),
                                    ),
                                    DataColumn(
                                        label: Text('Price', style: TextStyle(fontStyle: FontStyle.italic),)
                                    ),
                                ],
                                rows: const <DataRow>[
                                    DataRow(
                                        cells: <DataCell>[
                                            DataCell(Text('1')),
                                            DataCell(Text('S')),
                                            DataCell(Text('dsd')),
                                        ],
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                            DataCell(Text('2')),
                                            DataCell(Text('dasdad')),
                                            DataCell(Text('asdasdasd')),
                                        ],
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                            DataCell(Text('3')),
                                            DataCell(Text('sdasda')),
                                            DataCell(Text('32313')),
                                        ],
                                    ),
                                ]
                            )
                        )
                    )
                ]
            )
        );
    }
}