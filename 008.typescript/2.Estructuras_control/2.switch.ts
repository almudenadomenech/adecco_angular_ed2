let day: number = 2; // inicializado
let dayName: string; // declarado

switch (day) {
    case 1:
        dayName = 'Monday';
        break;
    case 2:
        dayName = 'Tuesday';
        break;
    case 3:
        dayName = 'Wednesday';
        break;
    // ...otros casos
    default:
        dayName = 'Invalid day';
}

console.log(dayName);