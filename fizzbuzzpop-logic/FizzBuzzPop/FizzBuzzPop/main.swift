//
//  main.swift
//  FizzBuzzPop
//
//  Created by Azamat Kenjebayev on 12/6/21.
//

/*
 Fizz Buzz is a counting and number substitution game mainly aimed at teaching children division.
 Players take turns counting up from one, replacing any number that is divisible by 3 with the word 'fizz', any number divisible by 5 with the word 'buzz', any number divisible by 7 with the word 'pop', and any number divisible by both 3 and 5 to be replaced with 'fizz buzz', any number divisible by both 3 and 7 to be replaced with 'fizz pop' & etc.
 */

import Foundation

print("Hello, let's play Fizz Buzz Pop game.")

var num: Int

func playGame(){
    print("Please enter any positive number.")
    let num: Int = Int(readLine()!)!
    if num % 3 == 0 {
        print("fizz")
    }else if num % 3 != 0 {
        print("There's no any fizz. Your number is: \(num)")
    } else if num % 5 == 0 {
        print("buzz")
    }else if num % 5 != 0 {
        print("There's no any buzz. Your number is: \(num)")
    } else if num % 7 == 0 {
        print("pop")
    }else if num % 7 != 0 {
        print("There's no any pop. Your number is: \(num)")
    } else if num % 15 == 0 {
        print("fizzbuzz")
    }else if num % 15 != 0 {
        print("There's no any fizzbuzz. Your number is: \(num)")
    } else if num % 21 == 0 {
        print("fizzpop")
    }else if num % 21 != 0 {
        print("There's no any fizzpop. Your number is: \(num)")
    } else if num % 35 == 0 {
        print("buzzpop")
    }else if num % 35 != 0 {
        print("There's no any buzzpop. Your number is: \(num)")
    } else if num % 105 == 0 {
        print("fizzbuzzpop")
    }else if num % 105 != 0 {
        print("There's no any fizzbuzzpop. Your number is: \(num)")
    }
    print("Let's play again... Y/N")
    if readLine()!.uppercased() == "Y" {playGame()}
    else {print("See ya!")}
    
}
playGame()
