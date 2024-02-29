// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
  Para ver una implementación completa del estandar ERC-20, segura y con la ultima versión de solc,
  recomiendo estudiar la implementación de OpenZeppelin desde su repo en GitHub

https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol

  hay seis funciones principales que debe implementar un token ERC-20:

    TotalSupply – Se utiliza establecer el suministro total de tokens de un token ERC-20 específico
    BalanceOf – Para obtener el balance de una dirección en particular
    Transfer – Permite al usuario transferir la propiedad de un token a otra dirección
    TransferFrom – Funciona de manera similar a la función de transferencia con la ventaja adicional de permitir que los contratos transfieran tokens en nombre del usuario
    Approve – Se utiliza para establecer un límite en la cantidad de tokens que un contrato inteligente puede retirar
    Allowance – Otorga a direcciones externas el acceso y permiso para gastar los tokens de un saldo determinado
    
*/

// pragma solidity ^0.6.0;

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}
