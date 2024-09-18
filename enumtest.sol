// SPDX-License-Identifier: GPL-3.

pragma solidity >=0.6.0 <0.9.0;

contract EnumTest {
    enum LifeStatus{
        Alive,
        Dead
    }
    struct Character {
        string username;
        uint age;
        LifeStatus status;
    }
    Character public character;
    function setAge(uint age) public {
        character.age = age;
    }
    function setUsername(string memory username) public {
        character.username = username;
    }
    function setLifeStatus(LifeStatus _status) public {
        character.status = _status;
    }
}
contract PlayerCharacter {
    Character public charecter;
    constructor(string memory _username){
        charecter.username = _username;
    }
    enum LifeStatus{
        Alive,
        Dead
    }

    struct Character {
        string username;
        uint age;
        LifeStatus status;
    }
    function setAge(uint age) public {
        charecter.age = age;
    }
    function setLifeStatus(LifeStatus _status) public {
        charecter.status = _status;
    }
}
