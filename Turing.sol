// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";





contract Turing is ERC20{
    address professora =0xA5095296F7fF9Bdb01c22e3E0aC974C8963378ad;

    mapping(string => address)          map;
    mapping(string => bool)             allowed;
    mapping(address => bool)            permission;
    bool voting = true;




    constructor() ERC20("DevToken", "DVT"){
        

        map["Andre"]      =   0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6;
        map["Antonio"]    =   0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6;
        map["Ratonilo"]   =   0x5d84D451296908aFA110e6B37b64B1605658283f;
        map["eduardo"]    =   0x500E357176eE9D56c336e0DC090717a5B1119cC2;
        map["Enzo"]       =   0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8;
        map["Fernando"]   =   0xFED450e1300CEe0f69b1F01FA85140646E596567;
        map["Juliana"]    =   0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e;
        map["Altoe"]      =   0x6701D0C23d51231E676698446E55F4936F5d99dF;
        map["Salgado"]    =   0x8321730F4D59c01f5739f1684ABa85f8262f8980;
        map["Regata"]     =   0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a;
        map["Luis"]       =   0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33;
        map["Nicolas"]    =   0x01fe9DdD4916019beC6268724189B2EED8C2D49a;
        map["Rauta"]      =   0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1;
        map["Silva"]      =   0xCAFE34A88dCac60a48e64107A44D3d8651448cd9;
        map["Sophie"]     =   0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3;
        map["Thiago"]     =   0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97;
        map["Brito"]      =   0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f;
        map["ulopesu"]    =   0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee;
        map["Vinicius"]   =   0x48cd1D1478eBD643dba50FB3e99030BE4F84d468;
        map["Bonella"]    =   0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c;

        permission[0xD07318971e2C15b4f8d3d28A0AEF8F16B9D8EAb6]=true;
        permission[0x127B963B9918261Ef713cB7950c4AD16d4Fe18c6]=true;
        permission[0x5d84D451296908aFA110e6B37b64B1605658283f]=true;
        permission[0x500E357176eE9D56c336e0DC090717a5B1119cC2]=true;
        permission[0x5217A9963846a4fD62d35BB7d58eAB2dF9D9CBb8]=true;
        permission[0xFED450e1300CEe0f69b1F01FA85140646E596567]=true;
        permission[0xFec23E4c9540bfA6BBE39c4728652F2def99bc1e]=true;
        permission[0x6701D0C23d51231E676698446E55F4936F5d99dF]=true;
        permission[0x8321730F4D59c01f5739f1684ABa85f8262f8980]=true;
        permission[0x4A35eFD10c4b467508C35f8C309Ebc34ae1e129a]=true;
        permission[0xDD551702Dc580B7fDa2ddB7a1Ca63d29E8CDCf33]=true;
        permission[0x01fe9DdD4916019beC6268724189B2EED8C2D49a]=true;
        permission[0x726150C568f3C7f1BB3C47fd1A224a5C3F706BB1]=true;
        permission[0xCAFE34A88dCac60a48e64107A44D3d8651448cd9]=true;
        permission[0xDfb0B8b7530a6444c73bFAda4A2ee3e482dCB1E3]=true;
        permission[0xBeb89bd95dD9624dEd83b12dB782EAE30805ef97]=true;
        permission[0xEe4768Af8caEeB042Da5205fcd66fdEBa0F3FD4f]=true;
        permission[0x89e66f9b31DAd708b4c5B78EF9097b1cf429c8ee]=true;
        permission[0x48cd1D1478eBD643dba50FB3e99030BE4F84d468]=true;
        permission[0xFADAf046e6Acd9E276940C728f6B3Ac1A043054c]=true;




        
        
        allowed["Andre"]      = true;
        allowed["Antonio"]    = true;
        allowed["Ratonilo"]   = true;
        allowed["eduardo"]    = true;
        allowed["Enzo"]       = true;
        allowed["Fernando"]   = true;
        allowed["Juliana"]    = true;
        allowed["Altoe"]      = true;
        allowed["Salgado"]    = true;
        allowed["Regata"]     = true;
        allowed["Luis"]       = true;
        allowed["Nicolas"]    = true;
        allowed["Rauta"]      = true;
        allowed["Silva"]      = true;
        allowed["Sophie"]     = true;
        allowed["Thiago"]     = true;
        allowed["Brito"]      = true;
        allowed["ulopesu"]    = true;
        allowed["Vinicius"]   = true;
        allowed["Bonella"]    = true;

    }

    modifier onlyProfessora {
      require(msg.sender == 0xA5095296F7fF9Bdb01c22e3E0aC974C8963378ad);
      _;
    }

    modifier validSender {
        require(permission[msg.sender]);
        _;
    }

    modifier notSelf(string calldata codinome){
        require(msg.sender!=map[codinome]);
        _;
    }

    // modifier ownerOrProfessora {
    //   require(msg.sender == 0xA5095296F7fF9Bdb01c22e3E0aC974C8963378ad || msg.sender == owner) ;
    //   _;
    // }
    

    modifier maximumAmount(uint256 amount){
        require(amount <=2*amount*10**18);
        _;
    }

    modifier votation{
        require(voting);
        _;
    }

    
    function issueToken(address receiver, uint256 amount ) public onlyProfessora{ 
            _mint(receiver, amount);
    }

    function vote(string calldata codinome, uint256 amount) public votation  validSender notSelf(codinome)
        maximumAmount(amount){
            address receiver=map[codinome];
            require(allowed[codinome],"Can't vote this person anymore");
            _mint(receiver,amount);
            allowed[codinome]=false;
            _mint(msg.sender,0.2*10**18);
            
    }
    function endVoting() public onlyProfessora{
        voting = false;
    }
}