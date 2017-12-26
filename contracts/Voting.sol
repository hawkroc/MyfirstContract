pragma solidity ^0.4.7;
contract Voting {
    //pengyin
    mapping (bytes32=>uint8) public votesReceived;

    bytes32[] public candidateList;

    function Voting(bytes32[] candidateNames) {
    candidateList=candidateNames;

    }

  function totalVotesFor(bytes32 candidate) constant returns (uint8) {
      
      require(validCandidate(candidate)==true);
      return votesReceived[candidate];
  }

  function voteForCandidate(bytes32 candidate) {
  assert(validCandidate(candidate)==true);
  votesReceived[candidate]+=1;
  

  }

  function validCandidate(bytes32 candidate) constant returns (bool) {

      for (uint index = 0; index < candidateList.length; index++) {
          if(candidateList[index]==candidate){
            return true;
           
          }
          
      }
      return false;
      
  }


//remix+metamask Kovan Test net



}