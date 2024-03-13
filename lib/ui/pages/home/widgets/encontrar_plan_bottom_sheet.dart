import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EncontrarPlanBottomSheet extends StatefulWidget {
  const EncontrarPlanBottomSheet({super.key});

  @override
  State<EncontrarPlanBottomSheet> createState() =>
      _EncontrarPlanBottomSheetState();
}

class _EncontrarPlanBottomSheetState extends State<EncontrarPlanBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => SafeArea(
              child: SizedBox(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        const Color.fromARGB(213, 255, 235, 59),
                        const Color.fromARGB(222, 255, 193, 7),
                        const Color.fromARGB(210, 255, 153, 0),
                        const Color.fromARGB(207, 255, 86, 34),
                      ])),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 10,
                            width: constraints.maxWidth * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: FractionallySizedBox(
                      //         widthFactor: 0.8,
                      //         child: TextField(
                      //           decoration: InputDecoration(
                      //               fillColor: Colors.white,
                      //               filled: true,
                      //               contentPadding: const EdgeInsets.symmetric(
                      //                   vertical: 2, horizontal: 10),
                      //               border: OutlineInputBorder(
                      //                   borderRadius: BorderRadius.circular(20))),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // ElevatedButton(onPressed: () {}, child: Text('Buscar')),}
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(174, 0, 0, 0),
                            borderRadius: BorderRadius.circular(18)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.saved_search_sharp,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Haz una búsqueda personalizada',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Text('o'),
                      SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          CardAcitividades(
                            icono: Icons.restaurant,
                            texto: 'Comer',
                          ),
                          CardAcitividades(
                            icono: Icons.wine_bar,
                            texto: 'Beber',
                          ),
                          CardAcitividades(
                            icono: Icons.hotel,
                            texto: 'Descansar',
                          ),
                          CardAcitividades(
                            icono: Icons.casino_rounded,
                            texto: 'Apostar',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}

class CardAcitividades extends StatelessWidget {
  final IconData icono;
  final String texto;

  const CardAcitividades({super.key, required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icono,
            size: 40,
          ),
          Text(texto)
        ],
      ),
    );
  }
}
