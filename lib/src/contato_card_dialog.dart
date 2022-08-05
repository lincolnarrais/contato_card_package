import 'package:flutter/material.dart';

class ContatoCardDialog extends StatelessWidget {
  const ContatoCardDialog({super.key});

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
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Contato',
                    style: TextStyle(
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
                child: const Center(
                  child: Text(
                    'devsolutionsmb@gmail.com'
                    '\n\n© MB Development Solutions 2022',
                    textAlign: TextAlign.center,
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
