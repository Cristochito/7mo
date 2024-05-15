class CJugador {
    constructor(nombre, posicion, edad, estatura, peso, nacionalidad) {
        this.nombre = nombre;
        this.posicion = posicion;
        this.edad = edad;
        this.estatura = estatura;
        this.peso = peso;
        this.nacionalidad = nacionalidad;
    }

    // Consulta a: Listar todos los jugadores que sean de Nacionalidad Argentina
    static listarJugadoresArgentinos(jugadores) {
        return jugadores.filter(jugador => jugador.nacionalidad === "Argentina");
    }

    // Consulta b: Listar todos los jugadores que tengan peso entre 75 y 80 kg
    static listarJugadoresPesoEntre75y80(jugadores) {
        return jugadores.filter(jugador => jugador.peso >= 75 && jugador.peso <= 80);
    }

    static jugadorMasAlto(jugadores) {
        let jugadorMasAlto = jugadores[0];
        for (let i = 1; i < jugadores.length; i++) {
            if (jugadores[i].estatura > jugadorMasAlto.estatura) {
                jugadorMasAlto = jugadores[i];
            }
        }
        return jugadorMasAlto;
    }
}

const jugadores = [
    new CJugador("Fábio1", "G", 43, 1.88, 86, "Brasil"),
    new CJugador("Marlon4", "D", 28, 1.83, 78, "Brasil"),
    new CJugador("Marcelo12", "D", 35, 1.73, 72, "Brasil"),
    new CJugador("Nino33", "D", 26, 1.88, 82, "Brasil"),
    new CJugador("John Kennedy9", "A", 21, 1.73, 71, "Brasil"),
    new CJugador("Keno11", "A", 34, 1.78, 72, "Brasil"),
    new CJugador("Germán Cano14", "A", 35, 1.78, 81, "Argentina")
];

console.log("Jugadores de nacionalidad argentina:");
console.log(CJugador.listarJugadoresArgentinos(jugadores));
console.log();

console.log("Jugadores con peso entre 75 y 80 kg:");
console.log(CJugador.listarJugadoresPesoEntre75y80(jugadores));
console.log();

console.log("Jugador mas alto:");
console.log(CJugador.jugadorMasAlto(jugadores));