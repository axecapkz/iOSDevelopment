//
//  main.swift
//  BerlinClock
//
//  Created by Azamat Kenjebayev on 12/5/21.
//

/*
 00:00:00    YOOOOOOOOOOOOOOOOOOOOOOO
 23:59:59    ORRRRRRROYYRYYRYYRYYYYYY
 16:50:06    YRRROROOOYYRYYRYYRYOOOOO
 11:37:01    ORROOROOOYYRYYRYOOOOYYOO
 */

import Foundation

print("""
      Hi! Please enter hours, minutes and seconds separated by ":" eg. hh:mm:ss
      """)

var input:[String] = (readLine()?.components(separatedBy: ":"))!

var timeHours: Int = Int(input.removeFirst())!
var timeMinutes: Int = Int(input.removeFirst())!
var timeSeconds: Int = Int(input.removeFirst())!

var hh = timeHours / 5
var hR = timeHours % 5
var fm = timeMinutes / 5
var sm = timeMinutes % 5

var O = "O"
var Y = "Y"
var R = "R"

let checkInputCondition: Bool = -1 < timeHours && timeHours < 24 && -1 < timeMinutes && timeMinutes < 60 && -1 < timeSeconds && timeSeconds < 60

//MARK: - Calculates Seconds input

func checkSec(sec: Int) -> String {
    timeSeconds % 2 == 0 ? "Y" : "O"
}

//MARK: - Calculates Single Minutes input

func checkSingleMinutes(status: String, minutes:Int, rows: Int) -> String{
    var sM:[String] = ["O"]
    for _ in 1...3{
        sM.append("O")
    }
    if minutes > 0 {
        for i in 1...minutes {
            if rows < 11 {
                sM[i - 1] = "R"
            } else {
                sM[i - 1] = "Y"
            }
        }
    }
        return sM.joined()
    }

//MARK: - Calculates Five Minutes input

func checkFiveMinutes(status: String, minutes:Int, rows: Int) -> String{
    var fM:[String] = ["O"]
    for _ in 1...10{
        fM.append("O")
    }
    if minutes > 0 {
        for i in 1...minutes {
            if rows < 11 || i % 3 == 0 {
                fM[i - 1] = "R"
            } else {
                fM[i - 1] = "Y"
            }
        }
    }
        return fM.joined()
    }
//MARK: - Calculates Single and Five Hours inputs

func checkSingleAndFiveHours(status: String, hours:Int, rows: Int) -> String{
    var sfH:[String] = ["O"]
    for _ in 1...3{
        sfH.append("O")
    }
    if hours > 0 {
        for i in 1...hours {
            if rows < 11 {
                sfH[i - 1] = "R"
            } else {
                sfH[i - 1] = "Y"
            }
        }
    }
        return sfH.joined()
    }
    
//MARK: - Final part of code: Test cases & print results

func finalResults() {
    
    if checkInputCondition {
        print("Single Minutes Row Test cases: " + checkSingleMinutes(status: Y, minutes: sm, rows: 11))
        print("Five Minutes Row Test cases: " + checkFiveMinutes(status: Y, minutes: fm, rows: 11))
        print("Single Hours Row Test cases: " + checkSingleAndFiveHours(status: R, hours: hR, rows: 4))
        print("Hours Row Test cases: " + checkSingleAndFiveHours(status: R, hours: hh, rows: 4))
        print("Seconds Lamp Test cases: " + checkSec(sec: timeSeconds))
        print("Entire Berlin Clock Test cases: " + checkSec(sec: timeSeconds)
                                                 + checkSingleAndFiveHours(status: R, hours: hh, rows: 4)
                                                 + checkSingleAndFiveHours(status: R, hours: hR, rows: 4)
                                                 + checkFiveMinutes(status: Y, minutes: fm, rows: 11)
                                                 + checkSingleAndFiveHours(status: Y, hours: sm, rows: 11))
    } else {
        print("Something gone wrong. Please try again...")
    }
}

finalResults()

