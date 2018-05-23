//
//  main.swift
//  PigLatin
//

import Foundation

// INPUT
// Global variable, tracks how many words we can expect to have to translate to Pig Latin
var countOfExpectedWordsToTranslate = 3
  print("How Many Words?")
while 1 == 1 {
    guard let givenInput = readLine() else {
        print("How Many Words?")
        continue
    }
    guard let givenInteger = Int(givenInput) else {
        print("How Many Words?")
        continue
    }
    
    if givenInteger <= 0 || givenInteger > 10 {
        print("How Many Words?")
    }
    countOfExpectedWordsToTranslate = givenInteger
    break
    
}

// Write a loop to actually collect the expected count of words to be translated from user
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the words to be translated
var pigLatin = " "
for counter in 1...countOfExpectedWordsToTranslate {
    
    // Ask user for the word to be translated
    print("Enter word #\(counter):")
    
    // Create a variable that has the translated word
   
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Replace this logic with the correct logic
    var output = ""
    var seenVowel = false
    var suffixFound = ""
    for letter in givenInput {
        if seenVowel == false {
        switch letter {
        case "A" , "E" , "I" , "O" , "U" :
           seenVowel = true
        default:
            seenVowel =  false
        }
        }
        if seenVowel == false {
            suffixFound += String(letter)
        } else  {
            output += String(letter)
            
        }
        
    pigLatin = output + suffixFound + "AY"
       
    }
     print(pigLatin)
}


