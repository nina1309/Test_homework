import UIKit
import Darwin
// MARK: - Задание 1
var names=["Kolya","Vasya","Dima","Valera","Olya","Marina"]
var surenames=["Ivanov","Petrov","Novin","Borisov","Durov","Lapshin"]

struct Student{
    var name:String
    var surename:String
}


class Class{
    var countStudent:Int
    var classik:[Student] = []
    
    init(){
        countStudent = .random(in: 5...10)
    }
    func klass(){
        for i in 1...countStudent{
            let student:Student = Student(name:" \(String(describing: names.randomElement()!))", surename: "\(String(describing: surenames.randomElement()!))")
            print("\(i) \(student.name), \(student.surename)")
            classik.append(student)
        }
    }
}
let sim="\u{1F4D4}"

class School{
    var countClass:Int
    init(){
        countClass = .random(in: 11...17)
    }
    func info(){
        for i in  1...countClass{
            print("\(sim)\(i)  класс:")
            print(Class().klass())
        }
    }
}

var k: () = School().info()


//MARK: -Задание 2

class Fraction{
    var numerator:UInt32
    var denominator:UInt32
    var wholePart:UInt32
    var sing:String
    
    
    init(){
        numerator = UInt32.random(in: 1...25)
        denominator = UInt32.random(in: 1...25)
        wholePart = UInt32.random(in: 1...25)
        if Bool.random() == true {sing=""}else{sing = "-"}
    }
    
    func value(){
        print ("\(sing)1*\(wholePart) * \(numerator)/\(denominator)")
        if numerator >= denominator{
            let num = numerator % denominator
            for i in 2...numerator{
                while denominator % i == 0 && numerator % i == 0{
                    numerator = numerator / i
                    denominator = denominator / i
                    
                }
            }
            if num > 0  {
                if wholePart == 0{
                    
                    let b  = (numerator/denominator)
                    print ("\(sing)\(b)*\(num)/\(denominator)")
                }else{
                    let c = denominator * wholePart + numerator
                    let b = (c / denominator)
                    print ("\(sing)\(b)*\(num)/\(denominator)")
                }
            }else{
                let b  = (numerator/denominator) + wholePart
                print ("\(sing)\(b)")
            }
            
        }else{
            print ("\(sing)\(wholePart)*\(numerator)/\(denominator)")
            
        }
    }
    
    
}


let a = Fraction()
a.value()

