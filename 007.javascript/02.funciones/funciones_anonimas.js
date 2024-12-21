var miFuncion = function (a, b) { return a + b; }

function operacion(a, b, func) {
    return func(a, b);
  }
  
  function suma(a, b) {
  return a + b;
  }
  
  console.log(operacion(4, 2, suma));