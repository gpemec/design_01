//
//  Wage.swift
//  fenster_buying
//
//  Created by abc on 2021-02-02.
//

import Foundation
class Wage {
    //forWage is a para, wage is a variable double is the type of info that accepts
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //ceil rounds up and not down
        return Int(ceil(price / wage))
    }
}
 
