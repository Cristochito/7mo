// Importa por defecto la clase Calculadora desde calculadora.js
import Calculadora from './calculadora.js';

// Usa la clase Calculadora
const calculadora = new Calculadora();

const resultadoMultiplicacion = calculadora.multiplicar(6, 4);
const resultadoDivision = calculadora.dividir(8, 2);

console.log(`Multiplicación: ${resultadoMultiplicacion}`); // Multiplicación: 24
console.log(`División: ${resultadoDivision}`); // División: 4
