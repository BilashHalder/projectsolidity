pragma solidity ^0.6.9;

contract RegUser{
 

    struct User{
        string fullName;
        uint mobNo;
        string idCard;
        uint testrep;
        string password;
        address useradd;
        
        string privateKey;
        address contractaddress;
 
    }
    
    
 mapping(string=>User) public userList;
 
 mapping(string=>User) public testCenterList;
 
 
 function addUser(string memory _fullName,uint _mobNo,string memory _idCard,string memory _password,address _useradd,string memory _privateKey)public{
     User memory temp=User(_fullName,_mobNo,_idCard,0,_password,_useradd,_privateKey,0x0000000000000000000000000000000000000000);
     userList[_idCard]=temp;
 }
 
 
  function addTestCenter(string memory _fullName,uint _mobNo,string memory _idCard,string memory _password,address _useradd,string memory _privateKey)public{
     User memory temp=User(_fullName,_mobNo,_idCard,0,_password,_useradd,_privateKey,0x0000000000000000000000000000000000000000);
     testCenterList[_idCard]=temp;
 }
 
 
 function updateUserContractAddress(string memory _idCard,address _conadd)public {
     userList[_idCard].contractaddress=_conadd;
 }
 
 
  function updateTestCenterContractAddress(string memory _idCard,address _conadd)public {
     userList[_idCard].contractaddress=_conadd;
 }
 
}
 
 
 
 
 
    
