/*

REQUISITOS:
Windows Powershell como Administrador:
get-ExecutionPolicy -list 
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser


OPCIÓN 1:

npm install -g typescript
tsc --version
npm install -g ts-node

Abrir Preferences User Settings (JSON)

"code-runner.executorMap": {
    "typescript": "ts-node"
}


OPCIÓN 2: si ts-node sale como comando no reconocido

En visual Studio code por la terminal:

npm install -g typescript
npm install --save-dev ts-node

crear .gitignore y añadir dentro: node_modules

Abrir Preferences User Settings (JSON)

"code-runner.executorMap": {
    "typescript": "./node_modules/.bin/ts-node"
}

node_modules
.gitignore
package.json
package-lock.json

*/

console.log("hola mundo");

