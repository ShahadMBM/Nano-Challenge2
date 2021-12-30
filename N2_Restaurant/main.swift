//
//  main.swift
//  N2_Restaurant
//
//  Created by Shahad on 23/05/1443 AH.
//

import Foundation

struct Meal{
    var dish : String
    var price: Int
}


var userChoices : [Meal] = []

var dish : [Meal] = [Meal(dish:"Grilled chicken with rice", price: 12),Meal(dish:"Steak with mashed potatoes", price: 14),Meal(dish:"Fish with chips", price: 13)]
var appetizers : [Meal] = [Meal(dish:"Chicken soup ",price: 7), Meal(dish:"Dynamite shrimp ",price: 8), Meal(dish: "Notches with dipping sauce", price: 5)]
var desserts : [Meal]  = [Meal(dish: "Strawberry cheesecake", price: 5),Meal(dish: "Crunchy chocolate cake", price: 5),Meal(dish: "Ice cream ", price: 3)]

var beverages: [Meal]  = [Meal (dish: "Soda ", price :3 ),Meal(dish: "Orange juice ", price: 4),Meal(dish: "Water", price: 2)]


// sentences to print sections menu

let dishMenu = """
————————————————————————————————
       --- Main dish ---

1. Grilled chicken with rice  $12
2. Steak with mashed potatoes $14
3. Fish with chips            $13

"""

let appetizersMenu = """
————————————————————————————————
       --- Appetizers ---

1. Chicken soup               $7
2. Dynamite shrimp            $8
3. Notches with dipping sauce $5
"""
let dessertsMenu = """
————————————————————————————————
       --- Desserts ---

1. Strawberry cheesecake      $5
2. Crunchy chocolate cake     $5
3. Ice cream                  $3
"""

let beveragesMenu = """
————————————————————————————————
       --- Beverages ---

1. Soda                       $3
2. Orange juice               $4
3. Water                      $2
"""
//



print("————————————————————————————————")
print("Welcome to Shaz Resturant Menu ")
print("————————————————————————————————")


var check = true
repeat {
    print("    ------  Menu ------   ")
    print("     Sections   ")
    print("1. Main dish")
    print("2. Appetizers")
    print("3. Desserts")
    print("4. Beverages")
    print("5. Exit")
    print("\nEnter number of section or ( 5 to exit ) :")
    let numSection = readLine()
    
   
    switch numSection{
        
    case "1":
        excute(section: dishMenu  , arrAppend : dish)
        
    case "2":
        excute(section: appetizersMenu  , arrAppend : appetizers)
        
    case "3":
        excute(section: dessertsMenu , arrAppend : desserts)
        
    case "4":
        excute(section: beveragesMenu  , arrAppend :beverages)
        
    case "5":
        resturantBill()
        check = false
    default:
        print(" Please try another number : \n")
    }
} while check;


    
func excute (section menu: String , arrAppend arr : Array<Meal>){
    print(menu)
    print("Enter a number of your choice :")
    let  dishChoice  = readLine()
    
    if (dishChoice  == "1") {
        userChoices.append(arr[0])
        print("Added successfully")
        
    } else if (dishChoice  == "2") {
        userChoices.append(arr[1])
        print("Added successfully")
        
    } else if (dishChoice  == "3") {
        userChoices.append(arr[2])
        print("Added successfully")
        
    } else {
        print("please choose number from menu")
    }
}


func resturantBill(){
    
    if userChoices.isEmpty{
        print("Thank you for visiting")
    } else{
        print("\n-------------- Bill --------------")
        print("\n     Your receipt :\n")
        
        for index in userChoices {
            print("        \(index.dish)")
        }
        
        var sum = 0
        for i in userChoices{
            
            sum += i.price
        }
        print("\n     Amount due: $\(sum)\n ")
        
       
    }
    
}
