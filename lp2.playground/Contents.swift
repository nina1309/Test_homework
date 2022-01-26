import UIKit
//задание  1
// проверочка

func myPow(_ x: Double, _ y: Int) -> Double?{
    if y == 0{
        return 1
    }
    if y < 0 && x==0{
        return nil
    }
    var i = 1.0
    if y < 0 {
       let x = 1 / x
        for _ in 1...abs(y){
        i *= x
        }
        
    }
    if y > 0{
        for _ in 1...y{
        i *= x
        }
    }
    return i
}
 myPow(-2, -1)

// задание 2

let closure_black={
    Int.random(in: 15...25)
}
let closure_casino={
    (Bool.random() ? "Red" : "Black", Int.random(in: 1 ... 20))
}
var count = 1
while closure_black() != 21 || closure_casino() != ("Red",13){
count += 1
}
print (count)


//задание 3

func chislo(_ start:Int,_ end:Int)->Int{
    var count1=0
    for i in start...end{//проверка деления на 2
        if i % 2 == 0 && i != 2 || i == 1{
            continue
        }//проверка деления на все остальное
        var n=3
       while n * n <= i {
        if i % n == 0 {
            break
        }
           n+=2
        }
        if n * n > i{
            count1 += 1
            print (i)
        }
    }
    return count1
}

chislo(1,25)
