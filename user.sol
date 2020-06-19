pragma solidity ^0.4.17;

contract UserContract{
uint public status=0;//0-not tested 1-safe 2-partial safe 3-not safe

mapping (address=>string)private myhistory ;

mapping (string=>bool)private testRecord;

function addMyHistory(address person,string _dateTime)public {
    myhistory[person]=_dateTime;
}

function updateStatus(uint _status)public{
    status=_status;
}

function addTestRecord(string _des,bool a )public{
    testRecord[_des]=a;
}

}
