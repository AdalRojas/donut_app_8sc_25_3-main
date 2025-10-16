import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String? label;
  
  // No necesitas el 'const' en la declaración del constructor si el body no es constante.
  const MyTab({super.key, required this.iconPath, this.label}); 

  @override
  Widget build(BuildContext context) {
    // Aumentamos la altura de nuevo a 90 para dar espacio a la imagen y al texto.
    return Tab(
      height: 90, // <--- Altura para acomodar la imagen y el texto
      
      // La Column es el widget principal del Tab y contendrá todo
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. EL CONTENEDOR GRIS CON LA IMAGEN
          Container(
            height: 55, // Altura fija para el contenedor gris
            width: 55, // Ancho fijo para que se vea cuadrado y bien centrado
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Fondo gris claro
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              iconPath,
              color: Colors.grey[600], // Color del ícono
            ),
          ),

          // Espacio entre la imagen y el texto
          if (label != null) 
            const SizedBox(height: 4),
            
          // 2. EL TEXTO NEGRO SIN FONDO
          if (label != null)
            Text(
              label!,
              style: const TextStyle(
                color: Colors.black, // Texto en color negro
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis, // Para manejar textos largos
            ),
        ],
      ),
    );
  }
}