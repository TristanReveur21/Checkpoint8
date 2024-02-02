//
//  Checkpoint8.swift
//  
//
//  Created by Михаил Медведев on 01.02.2024.
//

import Foundation

//Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

// A property storing how many rooms it has.
// A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
// A property storing the name of the estate agent responsible for selling the building.
// A method for printing the sales summary of the building, describing what it is along with its other properties.


protocol Building {
    var numberOfRooms: Int {get set}
    var coast: Int {get set}
    var nameOfRealStateAgent: String {get set}
    
    func Sell()
}

struct House: Building {
   func Sell() {
        print("This building has \(numberOfRooms) rooms and coast \(coast)$.If you untrested in this buildig contact with \(nameOfRealStateAgent).")
    }
    var numberOfRooms = 6
    var coast = 500_000
    var nameOfRealStateAgent = "Mrs. Hudson"
    
    }

struct Office: Building {
    var numberOfRooms = 18
    var coast = 1_000_000
    var nameOfRealStateAgent = "Michael Gary Scott"
    
    func Sell() {
        print("This Office has \(numberOfRooms) separate cabinets and coast \(coast)$.If you untrested in this buildig contact with \(nameOfRealStateAgent).")
    }
}

let houseOnBakerStreet = House()
houseOnBakerStreet.Sell()
let officeScrantonBranch = Office()
officeScrantonBranch.Sell()
