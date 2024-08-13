// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Voting} from "../src/Voting.sol";

contract VotingTest is Test {
    // test createProposal
    // test vote
    // test getVotes

    Voting public voting;

    function setUp() public {
        voting = new Voting();
    }

    function testCreateProposal() public {
        voting.createProposal("Africa Onchain");
        assertEq(voting.id(), 1);
    }

    function testVote() public {
        voting.createProposal("Africa Onchain");
        voting.vote(0);
    }

    function testGetVotes() public {
        voting.createProposal("Africa Onchain");
        voting.vote(0);
        voting.getVotes(0);
    }
}