class CZooAnimal {
    constructor(n, cage, type, weight) {
        this.name = n;
        this.cageNumber = cage;
        this.IdTypeAnimal = type;
        this.weight = weight;
    }
}

let zooAnimals = [
    new CZooAnimal("León", 1, 1, 150),
    new CZooAnimal("Tigre", 2, 1, 140),
    new CZooAnimal("Águila", 3, 2, 2),
    new CZooAnimal("Cobra", 4, 3, 1),
    new CZooAnimal("Leopardo", 5, 1, 110)
];

function cantidadAnimalesMenor3kg(jaula) {
    return zooAnimals.filter(animal => animal.cageNumber === jaula && animal.weight < 3).length;
}

function cantidadFelinosEntreJaulas(minJaula, maxJaula) {
    return zooAnimals.filter(animal => animal.IdTypeAnimal === 1 && animal.cageNumber >= minJaula && animal.cageNumber <= maxJaula).length;
}

function nombreAnimalMenor120(jaula) {
    const animal = zooAnimals.find(animal => animal.cageNumber === jaula && animal.weight < 120);
    return animal ? animal.name : "No se encontró ningún animal en esa jaula con ese peso.";
}

let datosZooHTML = "<h3>Cantidad de animales en la Jaula 5 con peso menor a 3kg:</h3>";
datosZooHTML += "<p>" + cantidadAnimalesMenor3kg(5) + "</p>";
datosZooHTML += "<h3>Cantidad de felinos entre Jaulas 2 y 5:</h3>";
datosZooHTML += "<p>" + cantidadFelinosEntreJaulas(2, 5) + "</p>";
datosZooHTML += "<h3>Nombre del animal en Jaula 4 con peso menor a 120:</h3>";
datosZooHTML += "<p>" + nombreAnimalMenor120(4) + "</p>";

document.getElementById("datosZoo").innerHTML = datosZooHTML;

let zooTableHTML = "<h3>Animales en el Zoológico:</h3>";
zooTableHTML += "<table border='1'>";
zooTableHTML += "<tr><th>Nombre</th><th>Jaula</th><th>Tipo</th><th>Peso</th></tr>";
zooAnimals.forEach(animal => {
    zooTableHTML += "<tr>";
    zooTableHTML += "<td>" + animal.name + "</td>";
    zooTableHTML += "<td>" + animal.cageNumber + "</td>";
    zooTableHTML += "<td>" + animal.IdTypeAnimal + "</td>";
    zooTableHTML += "<td>" + animal.weight + "</td>";
    zooTableHTML += "</tr>";
});
zooTableHTML += "</table>";

document.body.innerHTML += zooTableHTML;
