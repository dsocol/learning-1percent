// Specificăm clar că 'utilizator' trebuie să fie un String
let utilizator: string = "Daniel";
let puncte: number = 100;

function saluta(nume: string) {
    console.log("Salut, " + nume);
}

saluta(utilizator);

// TEST DE EROARE: Dacă scrii linia de mai jos, TS te va avertiza (subliniat cu roșu)
// utilizator = 50; // Eroare: Type 'number' is not assignable to type 'string'.