//
//  factArray.swift
//  Thomas Vagning
//
//  Created by Thomas Vagning on 22/04/15.
//  Copyright (c) 2015 Thomas Vagning. All rights reserved.
//

import Foundation

var usedNumbers = [Int]()

struct FactArray {
    
    //Create the array which holds the facts.
    let factsArray : [String] = [
        "I have visited more that 40 different countries for at least one night.",
        "This is my first project in which I have used Swift.",
        "I speak 3 languages Danish, English and German. I hope to start learning Spanish or Arabic soon.",
        "I try to code at least 30 mintues everyday. Whether it is HTML & CSS, Obj-C, Swift or something new.",
        "I have an International General Certificate of English as a Second Langauge from Cambridge International Examinations.",
        "I study Design and Experience at Aalborg Tekniske Gymnasium.",
        "My first client was a book publishing company.",
        "The first game I developed for iOS wasn't made in Xcode.",
        "My first Apple product was a second generation iPod Touch.",
        "My future plan is to study either Software Engineering or Experience Design.",
        "I have 3 different apps in the making in which I cooperate with my friends to develop the apps.",
        "I have done one month of volunteer work for an Enviromental Charity in London ealier this year.",
        "I have just enrolled in a Dutch course.",
        "I crafted my first beer 2 month ago and have a plan to start a micro brewhouse within 2 years.",
        "All my friends on Twitter have been a fantastic moral support!",
        "I visited Nepal and walked some of the Camino during my stay at Ranum Efterskole.",
        "I'm working on a special designed champange glass.",
        "My current set of devices is a 15 inch Retina MacBook Pro, an iPhone 6 and an iPad Air.",
        "Follow me on Twitter: @Vagning.",
        "It will be the first time that I'm attending WWDC.",
        "I'm in love with every Apple product that I own.",
        "I'm super excited for where the future takes me!",
        "I would loooooove to attend WWDC and visit San Francisco."]

    //Method retrieves a random fact of the array
    //A fact will only show up once every time the view is loaded.
    func randomFact() -> String {

        var index = UInt32(factsArray.count)
        var randomNumber = Int(arc4random_uniform(index))
        
        //Here it checks if the fact has already been show. To do this, a new array is created: usedNumbers. To make sure that nothing is repeated, we check if the index is already in the usedNumbers array.
        while(contains(usedNumbers, randomNumber)){
                randomNumber = Int(arc4random_uniform(index))
        }
        
        usedNumbers.append(randomNumber)
        return factsArray[randomNumber]
    }
    
    //Checks whether or not all facts have been showed.
    //If the size of both arrays is equal, all facts have been showed
    func factsPassed() -> Bool {
        if(usedNumbers.count == factsArray.count){
            return true
        }
        return false
    }
    
    //Clear the temporary array so that it is empty for when the view is loaded again.
    func clearUsedNumberArray() -> (){
        usedNumbers.removeAll(keepCapacity: false)
    }

}
