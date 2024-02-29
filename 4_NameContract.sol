// SPDX-License-Identifier: MIT
// Especifica la licencia bajo la cual se publica este contrato; en este caso, la licencia MIT.
// El identificador de licencia SPDX ayuda con el seguimiento y cumplimiento de los metadatos de software.

pragma solidity ^0.8.19;

// Establece la versión del compilador a 0.8.19, asegurando que el contrato se compile con una versión de Solidity 0.8.19 o más nueva, pero menor a 0.9.0.
// Esto es importante para asegurar la compatibilidad y aprovechar características específicas o correcciones de errores del compilador.

contract NameContract {
    // Define un nuevo contrato llamado 'NameContract'.

    string private name;
    // Una variable de estado privada 'name' de tipo string para almacenar un nombre.
    // Siendo privada, solo se puede acceder y modificar desde dentro de este contrato.

    address public owner;

    // Una variable de estado pública 'owner' para almacenar la dirección del propietario del contrato.
    // Al ser pública, Solidity crea automáticamente una función getter para ella,
    // lo que es útil para que cuentas o contratos externos lean la dirección del propietario.

    constructor(string memory yourName) {
        // Un constructor que se ejecuta una vez cuando el contrato es desplegado.
        // Toma un argumento de tipo string 'yourName' para inicializar la variable 'name'.

        owner = msg.sender;
        // Establece la variable 'owner' a la dirección que despliega el contrato.
        // 'msg.sender' es una variable global que se refiere al remitente de la llamada actual.

        name = yourName;
        // Inicializa la variable privada 'name' con el valor pasado al constructor en el momento del despliegue.
    }

    function getName() public view returns (string memory) {
        // Una función pública 'getName' que permite leer la variable 'name' externamente.
        // Marcada como 'view' indica que no modifica el estado, por lo tanto, no requiere gas para ser llamada (cuando se llama externamente).
        // Devuelve el 'name' almacenado en el contrato.

        return name;
    }
}
