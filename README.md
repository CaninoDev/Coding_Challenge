
<br />
<p align="center">
  <h3 align="center">Prime Multiplication Table</h3>

  <p align="center">
	 I got primes, they're multiplying!
    <br />
    <a href="https://github.com/othneildrew/Best-README-Template"><strong>E»</strong></a>
    <br />
    <br />
  </p>
</p>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Challenge](#about-the-challenge)
* [Methodology](#methodology)
  * [Built With](#built-with)
  * [Algorithm](#algorithm)
  * [Complexity](#complexity)
* [Usage](#usage)

<!-- About The Challenge -->
## About The Challenge
### Objective
Write a Ruby program that prints out a multiplication table of the first 10 primary numbers.

The program must run from the command line and print one table to STDOUT. The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

### Limitations
* Usage of the Prime from `stdlib` is forbidden
* No other external dependencies other than those necessary for testing is allowed.
* Develop using TDD/BDD.

## Methodology
### Built With
* Ruby 2.6.3
* Rspec Gem

### Algorithm
The solution uses the invert of the Sieve of Eratosthenes. As it is not predetermined how large the range is, the solution recursively divides the current iteration with all previous discovered prime numbers. 
### Complexity
I am unsure as to how to determine this, but if I were to guesstimate, since the algorithm does have to iterate through each integer, it would be variation O(n)?

## Usage
`chmod +x RunMe.sh`
`./RunMe.sh`
Please note, if improper input is given, the program will loop until the valid input is given. In this case, it validates whether the input is a natural number. Also note that the program will exit should the table width exceed the width of your terminal. 

