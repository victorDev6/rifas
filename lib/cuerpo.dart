import 'package:flutter/material.dart';

class Cuerpo extends StatefulWidget {
  @override
  _CuerpoState createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  @override
  Widget build(BuildContext context) {

     List numeros = [
        ['00', '50,000'],
        ['01', '20,000'],
        ['02', '50,000'],
        ['03', 'Agotado'],
        ['04', '50,000'],
        ['05', '10,000'],
        ['06', '10,000'],
        ['07', 'Agotado'],
        ['08', '30,000'],
        ['09', '50,000'],
        ['10', '10,000'],
        ['11', '50,000'],
        ['12', 'Agotado'],
        ['13', '20,000'],
        ['14', '50,000'],
        ['15', 'Agotado']
        ];

    return Scaffold(
       appBar: AppBar(
          title: const Text('Rifas Leonel'),
          centerTitle: true,
       ),
       body: Stack(
         children: [
            Positioned(
               top: 10.0,
              child: SizedBox(
                 width: MediaQuery.of(context).size.width,
                child: Column(
                   mainAxisAlignment : MainAxisAlignment.center,
                   crossAxisAlignment : CrossAxisAlignment.center,
                  children: const [
                     Text('Sorteo de: \$50,000 Precio: \$750', style: TextStyle(fontSize: 18),),
                     Text('VIERNES 30/07/2021')
                  ],
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 60),
             child: ListView.separated(
                 itemBuilder: (BuildContext, index){
                    return ListTile(
                       leading:  Container(
                          width: 50,
                          height: 50,
                          child: Center(child: Text(numeros[index][0])),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFe0f2f1)
                          ),
                       ),
                       title: Text(
                           (numeros[index][1] == 'Agotado' ? '' : '\$ ') + numeros[index][1],
                          style: TextStyle(color: numeros[index][1] == 'Agotado' ? Colors.red : Colors.black),
                       ),
                    );
                 },
                 separatorBuilder: (BuildContext, index) {
                    return const Divider(height: 1.0);
                 },
                 itemCount: numeros.length
             ),
           ),
         ],
       )
    );
  }
}
