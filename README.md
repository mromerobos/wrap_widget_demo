# Wrap Widget

El widget [Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html) s'utilitza per encapsular un conjunt de fills sense preocupar-te dels límits horitzontals i verticals. 

Es poden utilitzar diferents atributs per definir la organització dels fills i els marges que hi ha entre ells.

## Utilitat i ús

És un bon widget per quan has de representar una llista de widget sense preocupar-te de les mides dels widges i dels límits de la pantalla.

Aquest és un bon Widget per solucionar els problemes de overflow que a vegades produeixen les columnes i files.

## Atributs i implementació

Els atributs més importants són:

- **spacing:** defineix l'espai entre els diferents widgets
- **runSpacing:** defineix l'espai entre les línies de widgets
- **alignment:** forma d’alineació de l'ex principal
- **crossAxisAlignment:** forma d’alienació de l'ex secundari

Aquests atributs son els que ajudaran a distribuir els widgets de la forma que vulguis.

## Implementació

```dart
Wrap(
   spacing: 8.0, // gap between adjacent chips
   runSpacing: 4.0, // gap between lines
   children: <Widget>[
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
       label: Text('Hamilton'),
     ),
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
       label: Text('Lafayette'),
     ),
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
       label: Text('Mulligan'),
     ),
     Chip(
       avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
       label: Text('Laurens'),
     ),
   ],
 )
```
 *Exemple de la documentació oficial*
 
El widget Wrap funciona a partir d'una llista de Widgets per mostrar, utilitzant els atributs esmentats anteriorment pots decidir la seva organització.
S'ha de tenir en compte que la seva mida és irregular per tant es millor posar aquest widget dins components de mida variable. 

En el meu cas l'he posat dins un scrollChildView per que no hi hagi problemes de overflow vertical:
```dart
Widget build(BuildContext context) {
     return SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           InputWidget(onPressed: onPressedAdd),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Wrap content:', style: TextStyle(fontSize: 24),),
           ),
           (widgetList.length == 0) ? Container() : Container(
             margin: EdgeInsets.all(8.0),
             padding: EdgeInsets.all(8.0),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5.0),
                 border: Border.all(color: Colors.black),
             ),
             child: Wrap(
               spacing: 10,
               runSpacing: 20.0,
               alignment: WrapAlignment.start,
               children: widgetList,
             ),
           )
         ],
       ),
     );
```

## Demo, imatges i video

Imatges:

![Imatge1](/ruta/a/la/imagen.jpg)
![Imatge2](/ruta/a/la/imagen.jpg)
![Imatge3](/ruta/a/la/imagen.jpg)

## Referències

- [Wrap Class](https://api.flutter.dev/flutter/widgets/Wrap-class.html)
- [Wrap (Flutter Widget of the Week)](https://www.youtube.com/watch?v=z5iw2SeFx2M)

