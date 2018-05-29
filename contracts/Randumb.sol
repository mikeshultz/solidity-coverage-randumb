pragma solidity ^0.4.13;

// Bad random number generator
contract Randumb {

      event Mutation(uint256 mutagen);

      function mutate(uint256 mutagen) public constant returns (uint256) {
         Mutation(mutagen);
         return uint(sha3(mutagen +
                uint(sha3(uint(block.blockhash(1)) +
                uint(sha3(uint(block.coinbase) +
                uint(sha3(uint(block.difficulty) +
                uint(sha3(uint(block.gaslimit) +
                uint(sha3(uint(block.number) +
                uint(sha3(uint(block.timestamp)))))))))))))));
      }
}