// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract SmartContract {

  uint public orderCount;

  struct Order{
    address client;
    uint burgerSelection;
    bool delivered; 
  }

  mapping(uint => Order) public orders;

  function placeOrderOld(uint burgerSelection) public payable returns(uint){
    if(msg.value >= 1 ether){
      Order memory newOrder = Order(msg.sender, burgerSelection, false);
      orderCount++;
      orders[orderCount] = newOrder;
    }
    else{
      revert("Payment amount is not met.");
    }
    return orderCount;
  }


  function placeOrder(uint burgerSelection) public payable returns(uint){
    require(msg.value >= 1 ether);

      Order memory newOrder = Order(msg.sender, burgerSelection, false);
      orderCount++;
      orders[orderCount] = newOrder;

    return orderCount;
  }

  function delivered(uint orderNumber) public {
    orders[orderNumber].delivered = true;
    assert(orders[orderNumber].delivered == true);
  }
}
