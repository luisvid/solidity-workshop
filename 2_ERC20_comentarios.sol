
/*
Un contrato de tokens es simplemente un smart contract de Ethereum!. 
"Enviar tokens" en realidad significa:
"llamar a un método en un contrato inteligente que alguien escribió e implementó". 
Al final del día, un contrato de tokens no es mucho más que un mapping de 
direcciones a saldos, además de algunos métodos para sumar y restar de esos saldos.

¡Eso es todo! Estos saldos podrían considerarse dinero, puntos de experiencia 
en un juego, escrituras de propiedad o derechos de voto, 
y cada uno de estos tokens se almacenaría en diferentes contratos de tokens.

*/

// SPDX-License-Identifier: MIT
// Especifica la licencia bajo la cual se publica este contrato; en este caso, la licencia MIT.
// El identificador de licencia SPDX ayuda con el seguimiento de metadatos de software y el cumplimiento de licencias.

pragma solidity 0.8.20;
// Establece la versión del compilador a 0.8.20, asegurando que el contrato se compile con un compilador de Solidity que sea la versión 0.8.20 o más nueva pero menos de 0.9.0.
// Esto es importante para asegurar compatibilidad y aprovechar características específicas del compilador o correcciones de errores.

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Importa el contrato ERC20 de OpenZeppelin.
// OpenZeppelin es una biblioteca de contratos inteligentes segura y comunitariamente auditada que facilita el desarrollo de tokens ERC20.

// author: <nombre>
// Puede reemplazar <nombre> con el nombre del autor del contrato para documentación.
contract UCHCoin is ERC20 {
    // Define un nuevo contrato llamado 'UCHCoin' que hereda de ERC20 de OpenZeppelin.
    // Esto permite utilizar las funciones y variables definidas en el contrato ERC20, facilitando la creación de un token estándar ERC20.

    constructor(uint256 initialSupply) ERC20("UCHCoin", "UCHC") {
        // Un constructor que se ejecuta una vez cuando el contrato es desplegado.
        // Toma un argumento 'initialSupply' para establecer la oferta inicial del token.
        // Llama al constructor de ERC20 con el nombre del token "UCHCoin" y su símbolo "UCHC".

        _mint(msg.sender, initialSupply);
        // Emite la cantidad inicial de tokens al desplegar el contrato.
        // 'msg.sender' es una variable global que se refiere al remitente de la llamada actual, en este caso, el desplegador del contrato.
        // La función '_mint' es una función interna de ERC20 que incrementa el balance de tokens de una dirección y el suministro total de tokens.
    }
}

// *** Sobre Decimales ***

// por default, ERC20 usa un valor de 18 para decimales,
// al igual que Ether y la mayoría de los tokens ERC20
// Para usar un valor diferente, debemos sobreescribor la función decimals()

// function decimals() public view virtual override returns (uint8) {
//     return 16;
// }

// Si queremos enviar 5 tokens utilizando un contrato de token con 18 decimales,
// el método será:
// transfer(recipient, 5 * 10^18);
