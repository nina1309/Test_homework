import UIKit
//задание 1

var pers1:(name1:String,age1:Int, surname1:String?)
var pers2:(name2:String,age2:Int, surname2:String?)
pers1=(name1:"Tom",age1:23, surname1:"Ivanov")
pers2=(name2:"Kira",age2:32, surname2:nil)
(pers1.name1,pers2.name2)=(pers2.name2,pers1.name1)

print("\(pers2.name2) \(pers2.age2) \(pers2.surname2 ?? "Фамилия не найдена")")

print("\(pers1.name1) \(pers1.age1) \(pers1.surname1 ?? "Фамилия не найдена")")

// задание 2

let number: Int = 123
for i in 0 ... 1000{
    if i ^ number == 0 {
        print(i)
    }
}

// задание 3

infix operator •••
func •••(lhs: String, rhs: Int) -> String {
    String(repeating: lhs, count: rhs)
}

"интересно " ••• 4

prefix operator ±
prefix func ± (string: String) -> String {
    "\(string)"
}

±"яблочко"
