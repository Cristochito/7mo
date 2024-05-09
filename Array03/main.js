const fs = require('fs');

function filtranum(numeros, resultado) {
  let count = 0;
  let resultadoIndex = 0;

  for (let i = 0; i < numeros.length; i++) {
    const numero = numeros[i].toString();
    const primerDigito = numero[0];
    const ultimoDigito = numero[numero.length - 1];

    if (primerDigito === ultimoDigito) {
      resultado[resultadoIndex] = Number(numero);
      resultadoIndex++;
      count++;
    }
  }

  return count;
}

const contenidoArchivoEntrada = fs.readFileSync('datos.in', 'utf8').trim().split('\n');
const N = parseInt(contenidoArchivoEntrada[0]);
const numeros = contenidoArchivoEntrada[1].split(' ').map(Number);
const resultado = [];

const cantidadNumerosFiltrados = filtranum(numeros, resultado);

const contenidoArchivoSalida = `${cantidadNumerosFiltrados}\n${resultado.join(' ')}`;
fs.writeFileSync('datos.out', contenidoArchivoSalida);

