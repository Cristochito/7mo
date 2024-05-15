class Autor {
    constructor(nombre, apellido, nacionalidad, mejorObra, anoPublicacion, edadPublicacion) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.nacionalidad = nacionalidad;
        this.mejorObra = mejorObra;
        this.anoPublicacion = anoPublicacion;
        this.edadPublicacion = edadPublicacion;
    }
}

class Biblioteca {
    constructor(autores) {
        this.autores = autores;
    }

    listarAutoresArgentinos() {
        return this.autores.filter(autor => autor.nacionalidad === "Argentino");
    }

    listarAutoresPublicacionEntre1960y1980() {
        return this.autores.filter(autor => autor.anoPublicacion >= 1960 && autor.anoPublicacion <= 1980);
    }

    calcularPromedioEdadPublicacion() {
        const totalAutores = this.autores.length;
        const sumaEdades = this.autores.reduce((suma, autor) => suma + autor.edadPublicacion, 0);
        return sumaEdades / totalAutores;
    }

    mostrarTodosAutores() {
        return this.autores;
    }
}

const biblioteca = new Biblioteca ([
    new Autor("Gabriel", "Garcia Márquez", "Colombiano", "Cien años de soledad", "1967", "40"),
    new Autor("Julio", "Cortázar", "Argentino", "Rayuela", "1963", "48"),
    new Autor("Isabel", "Allende", "Chilena", "La casa de los espiritus", "1982", "40"),
    new Autor("Jorge Luis", "Borges", "Argentino", "Ficciones", "1944", "45"),
    new Autor("Clarice", "Lispector", "Brasileña", "La hora de la estrella", "1977", "56"),
    new Autor("Juan", "Rulfo", "Mexicano", "Pedro Páramo", "1955", "38"),
    new Autor("Carlos", "Fuentes", "Mexicano", "La región más transparente", "1958", "29"),
    new Autor("Eduardo", "Galeano", "Uruguayo", "Las venas abiertas de América Latina", "1971", "31")
]);

console.log("Autores de nacionalidad argentina:");
console.log(biblioteca.listarAutoresArgentinos());
console.log();

console.log("Autores que publicaron entre 1960 y 1980:");
console.log(biblioteca.listarAutoresPublicacionEntre1960y1980());
console.log();

console.log("Promedio de la edad de la publicacion:");
console.log(biblioteca.calcularPromedioEdadPublicacion);
console.log();

console.log("Todos los autores:");
console.log(biblioteca.mostrarTodosAutores());