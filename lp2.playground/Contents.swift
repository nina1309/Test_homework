import UIKit
 //задание  1
// проверочка


func myPow(_ x: Decimal, _ y: Int) -> Decimal?{
    if y<0{
        return pow(1/x,y*(-1))
    }else if y==0 && x==0{
    return nil
    }
return pow(x,y)
}
 myPow(-3, 3)

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
