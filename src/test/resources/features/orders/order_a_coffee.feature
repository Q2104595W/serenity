Feature: Order a coffee

  In order to save time when I pick up my morning coffee
  As a coffee lover
  I want to be able to order my coffee in advance

  Scenario Outline: Buyer orders a coffee when they are close to the coffee shop
    Given Cathy is <metres> metres from the coffee shop
    When Cathy has ordered a large cappuccino
    Then Barry should receive the order
    Then Barry should know the order is <preference>
    Examples:
      | metres | preference |
      | 100    | Urgent     |
      | 50     | Urgent     |
      | 300    | Normal     |