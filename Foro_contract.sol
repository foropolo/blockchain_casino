pragma solidity ^0.5.0;

contract dicebet {
    /* Our Online gaming contract */
    address payable owner;
    bool online;
    //address constant public owner_of_contract= 0x5c46ea27703Fdff53eF7Ef642C61B4C6CF5443aF;
    
    event results(uint mysteryNumber_, bool isWinner);
    
    constructor() public payable {
        owner = msg.sender;
        online = true;
    }
    
    
    modifier isOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    
   
    
    function withdrawFunds() public isOwner {
        msg.sender.transfer(address(this).balance);
    }
    
    function fundGame() public isOwner payable {

   }

    function mysteryNumber() private view returns (uint) {
        uint randomNumber = uint(blockhash(block.number-1))%10 + 1;
        return randomNumber;
    }
    
    function determineWinner(uint number, bool guess) public pure returns (bool) {
        if (guess == true) {
            if (number > 5) {
                return true;
            }
            if (number < 5) {
                return false;
            }
        } else if (guess == false) {
            if (number > 5) {
                return false;
            }
            if (number < 5) {
                return true;
            }
        }
    }
    //μηπως χρειαζεται εκτος απο το guess  στην συναρτηση winOrLose,να βαλω uint player_bet ωστε να παιρνω ως ορισμα το πονταρισμα του παιχτη
    function winOrLose(bool guess) external payable returns (uint mysteryNumber_ ,bool isWinner) {
        /* Use true for a higher guess, false for a lower guess */
        
        require(msg.sender.balance > msg.value, "Insufficient funds");
        require(online == true, "The game is not online");
        
        mysteryNumber_ = mysteryNumber();
        isWinner = determineWinner(mysteryNumber_, guess);
            
        emit results(mysteryNumber_, isWinner);    
            
            
        if (isWinner == true) {
            /* Player won */
            msg.sender.transfer(msg.value * 2);
            
            //return (true, mysteryNumber_);
        } else if (isWinner == false) {
        /* Player lost */
            
           // return (false, mysteryNumber_);
        }
    }

}