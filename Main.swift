//----------------------------------------------------------------
//----------------------------------------------------------------
//
//  Vehicle.swift
//
//  class
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//
public class Vehicle {
	
	var _licensePlate: String
	var _colour: String
	var _numberOfDoors: Int = 4
	var _speed: Double = 0    	
	var _maxSpeed: Double = 300	
	
	public init(licensePlate: String, colour: String) {
		//Default Constructor
		_colour = colour
		_licensePlate = licensePlate
	}
	
	//getters
	func getLicensePlate() -> String {
		return _licensePlate 
	}
	func getColour() -> String {
		return _colour 
	}
	func getNumberOfDoors() -> Int {
		return _numberOfDoors 
	}
	func getSpeed() -> Double {
		return _speed 
	}


	//setters
	func setLicensePlate(newPlate: String) {
		_licensePlate = newPlate
	}
	
	func setColour(newColour: String) {
		_colour = newColour
	}
	
	func setNumberOfDoors(doorCount: Int) {
		_numberOfDoors = doorCount
	}
	
	
	func Accelerate(amount: Double) {
		if (_speed + amount) > _maxSpeed {
			_speed = _maxSpeed
		} else {
		_speed += amount
		}
	}
	func Decelerate(amount: Double) {
		if (_speed - amount) < 0 {
			_speed = 0
		} else {
		_speed -= amount
		}
	}
	
	func ALL() -> String{
		//Returns the fields of the class
		return "License plate:\(_licensePlate)\nColour: \(_colour)\nNumber of doors: \(_numberOfDoors)\nSpeed: \(_speed)km/h\nMaximum speed: \(_maxSpeed)km/h"
	}
}



//----------------------------------------------------------------
//----------------------------------------------------------------
//
//  Bike.swift
//
//  extension of vehicle
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
public class Bike: Vehicle {
	
	public init(colour: String) {
		//Constructor override
		super.init(licensePlate: "", colour: colour)
		_numberOfDoors = 0
		_maxSpeed = 20
		_licensePlate = ""
	}

	override func ALL() -> String{
		//Returns the fields of the class
		return "Colour: \(_colour)\nNumber of doors: \(_numberOfDoors)\nSpeed: \(_speed)km/h\nMaximum speed: \(_maxSpeed)km/h"
	}

}
//----------------------------------------------------------------
//----------------------------------------------------------------
//
//  Truck.swift
//
//  extension of vehicle
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//
public class Truck: Vehicle {
	
	var MultiplyBy: Double = 0.4
	
	
	override public init(licensePlate: String, colour: String) {
		//Constructor override
		super.init(licensePlate: licensePlate, colour: colour)
		_numberOfDoors = 2
		_maxSpeed = 200
	}
	
	override func Accelerate(amount: Double) {
		super.Accelerate(amount: amount*MultiplyBy)
	}
	override func Decelerate(amount: Double) {
		super.Decelerate(amount: amount*MultiplyBy)
	}
}


//----------------------------------------------------------------
//----------------------------------------------------------------
//
//  Main.swift
//
//  Tests vehicle
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//


print("\n\nBike-------------")
let bike1: Bike = Bike(colour: "Yellow")
bike1.Accelerate(amount: 100)
print("Accelerated 100")
print(bike1.ALL())

print("\n\nTruck-------------")
let truck2: Truck = Truck(licensePlate: "ABC1234", colour: "Grey")
truck2.Accelerate(amount: 100)
print("Accelerated 100")
print(truck2.ALL())

