# Pizza Ordering System
## This is a solo project
This solo project is a simple command-line pizza ordering system built using Ruby. The main purpose of the project is to practice and demonstrate skills in object-oriented programming, test-driven development, and working with external APIs.

## Introduction
In this project, I've learned and implemented the following concept:
- Object-oriented programming in Ruby: creating classes, methods, and using instance variables.
- Test-driven development using RSpec: writing unit and integration tests.
- Working with external APIs: sending SMS notifications through the Twilio API.
This pizza ordering system allows users to place orders for available dishes, generate itemized receipts, and receive SMS order confirmations.

## Project Structure
The project is divided into tow main folders: 'lib' and 'spec'.

The 'lib' folder contains the following Ruby classes:
- 'Dish': Represents a menu item with a name and price.
- 'Order': Stores customer's selected dished and their quantities.
- 'Receipt': Generates and itemized receipt based on the customer's order.
- 'TextMessageSender': Sends and SMS confirmation using the Twilio API.

The 'spec' folder contains the corresponding test files for each class, as well as an integration test file that tests the interaction between the classes.

## Conclusion
This pizza ordering system project has been a great learning experience in applying OOP, TDD, and working with external APIs in Ruby. The project showcases how to to build a simple yet functional command-line application that can be further extended and improved in the future.