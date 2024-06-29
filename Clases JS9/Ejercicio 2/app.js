// Importa la clase Persona desde persona.js
import { Persona } from './persona.js';

// Crea instancias de Persona y ejecuta el método mostrarInformacion
const persona1 = new Persona('Juan', 30);
const persona2 = new Persona('María', 25);

console.log(persona1.mostrarInformacion()); // Nombre: Juan, Edad: 30
console.log(persona2.mostrarInformacion()); // Nombre: María, Edad: 25
