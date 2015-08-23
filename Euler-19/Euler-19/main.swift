//
//  main.swift
//  Euler-19
//
//  Created by Alan Hawse on 8/15/15.
//  Copyright (c) 2015 Elkhorn Creek Engineering. All rights reserved.
//

import Foundation

func numDaysMonth(month: Int, year: Int) -> Int
{
    switch(month)
    {
    case 1: return 31
    case 2:
        if year % 400 == 0
        {
            return 29
        }
        if year % 4 == 0 && year != 1900
        {
            return 29
        }
        return 28
        
    case 3: return 31
    case 4: return 30
    case 5: return 31
    case 6: return 30
    case 7: return 31
    case 8: return 31
    case 9: return 30
    case 10: return 31
    case 11: return 30
    case 12: return 31
    default: return 0
    }
}


/*
    var gregorian = NSCalendar(identifier:NSCalendarIdentifierGregorian)
    
    var x = NSDateComponents()
    x.calendar = gregorian
    x.month = month
    x.day = day
    x.year = year
    if let todayDate = gregorian!.dateFromComponents(x)
    {
        let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        let myComponents = myCalendar.components(.CalendarUnitWeekday, fromDate: todayDate)
        let weekDay = myComponents.weekday
        return weekDay
    }
    println("Error \(year) \(month) \(day)")
    return 0
    
}
*/



func getDayOfWeek(today:String)->Int {
    
    let formatter  = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    if let todayDate = formatter.dateFromString(today)
    {
        let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        let myComponents = myCalendar.components(.CalendarUnitWeekday, fromDate: todayDate)
        let weekDay = myComponents.weekday
        return weekDay
    }
    println("error \(today)")
    return 0
}

func getDayOfWeek(year: Int, month: Int, day: Int)->Int {
    
    return getDayOfWeek("\(year)-\(month)-\(day)")
    
}

//println(getDayOfWeek(1900,1,41))

//println(getDayOfWeek("1900-1-1"))

var count = 0
for var year=1901;year<2001;year++ {
    for var month=1;month<=12;month++ {
        if getDayOfWeek(year,month,1) == 1 {
            count = count + 1
        }
    }
}


/*

let printYear = 2000

var count = 0
var dayOfWeek=2
for var year=1900;year<2001;year++ {
    for var month=1;month<13;month++ {
        for var days=1; days<=numDaysMonth(month,year); days++ {
            
            if getDayOfWeek(year,month,days) != dayOfWeek {
                println("error \(year) \(month) \(days)")
            }
            
           
            if dayOfWeek==1 && days==1 {
                count = count + 1
            }
            dayOfWeek = dayOfWeek + 1
            if dayOfWeek > 7
            {
                dayOfWeek = 1
            }
        }
        
    }
}
*/

println("Count =\(count)")


