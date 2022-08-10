import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContatoCardDialog extends StatelessWidget {
  const ContatoCardDialog({super.key});

  final _cardTitle = 'Contato';
  final _orgEmail = 'devsolutionsmb@gmail.com';
  final _orgName = '© MB Development Solutions 2022';

  @override
  Widget build(BuildContext context) {
    const borderRadius = 15.0;

    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      backgroundColor: Colors.transparent,
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 340),
        child: Card(
          margin: const EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(borderRadius),
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    _cardTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(borderRadius),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        _orgName,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: SelectableText(
                              _orgEmail,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(text: _orgEmail),
                              ).then((value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Email copiado para a área de transferência.',
                                    ),
                                  ),
                                );
                              });
                            },
                            icon: const Icon(Icons.copy_sharp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
