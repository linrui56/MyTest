//
//  ViewController.swift
//  swift练手
//
//  Created by Asxce, on 16/4/1.
//  Copyright © 2016年 Asxce,. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //let常量   var变量
        self.sumOf(1,2,3)
        
        
        //类型注解（注解类型为string）
        var lin:String = "lin"
        var lin1 = "lin1"
        let lin2 = 2
        
        lin = "qwqw"
        lin1 = "ni"
        //打印
        print("...")
        
        
        print(lin)
        print(lin1)
        print(lin2)
        
        print("helloSwift")
        print ("helloWorld")
        
        
        let expliciFloat:Float = 4;
        
        print(expliciFloat);
        
        let label = "this is test测试"
        let width = 94
        let widthLable = label + String(width)
        print(label)
        print(width)
        
        print(widthLable+"AA")
        //强制转换
        print(label + String(width)+"BB")
        //官方推荐
        print("\(label)\(width)")
        print("hello\(width)++++++++")
        print("\(label + String(width)+String(expliciFloat))")
        
        
        //数组
        print("---------数组、字典")
        //swift支持隐式表达，所以可以不用定义类型
        var nsarray = ["zhao","qian","shu","li"]
        //替换原来在数组里1号元素
        nsarray[1] = "hahaha"
        print(nsarray)
        //创建一个空数组或是字典  并且定义其类型
        var emptyArray = [String]()
        var emptyDictionary = [String:Float]()
        
        emptyArray.append("dddd")
        emptyDictionary.updateValue(12.4, forKey: "23")
        let dicM:[String:Float] = ["1":1,"2":2]
        for (key, value) in dicM {
            emptyDictionary.updateValue(value, forKey: key)
        }
      
        print("空数组\(emptyArray)")
        print("空字典\(emptyDictionary)")
        
        
        
        
        //字典
        var dictionary = ["zhang":"san",
                             "li":"si"]
        //添加字典新元素
        dictionary["wang"]="wu"
        
        var newDictionary:[String:String] = ["first":"1"]
        newDictionary.first
        print("新字典\(newDictionary["b"])")
        var newValue = ""
        if let value = newDictionary["first"] {
            
            newValue = value
        }
        
        let v = newDictionary["first"]
        newValue = v ?? ""
       // guard let value = newDictionary["first"] else {return}
        print(dictionary)
        
        //需要先声明
        var array :[[AnyObject]] = []
        var newArray:[AnyObject] = []
        newArray.append([11])
        newArray.append([22])
        newArray.append([33])
        print("新数组",newArray)
        
       
        
        array.append([1,2,1])
        array.append([232])
        print(array)
        
        
        
        //循环
        let individualScores = [43,99,213,90,76]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            }else{
                teamScore += 1
            }
        }
        //                   \n换行符
        print("Swift循环/if判断\n\(teamScore)")
        
        //可选属性
        let optionalString:String? = "hello"
        print("optionalString == nil的值\(optionalString==nil)")
        
        let optionalName:String? = "John Appleseed"
        var greeting = "Hello!"
        //如果optionalName有值  如果optionalName为空 常量let就不能接收 
        //如果函数不成立 那便不能执行函数里面的代码
        if let name = optionalName{
            greeting = "hello, \(name)"
        }
        
        print("greeting:",greeting)
        
        
        //可选属性-默认值
        let nickName:String? = nil
        let fullName:String = "John Applseed"
        //?? 为默认值 和  可选值符号
        //默认值为第一个  如果第一个为空   那么就等于第二个
        let informalGreeting = "Hi\(nickName ?? fullName)"
        print("默认值:",informalGreeting)
        
        //条件判断switch
        let vegetable = "red pepper"
        
        switch vegetable {
        case "celery":
            let vegetableComment = "Add some raisins and make ants on a log."
            print(vegetableComment)
        case "cucumber","watercress":
            let vegetableComment = "That would make a good tea sandwich."
            print(vegetableComment)
        case let x where x.hasSuffix("pepper"):
            let vegetableComment = "it is a spicy\(x)"
            print(vegetableComment)
        default:
            let vegetableComment = "Everything tastes good in soup."
            print(vegetableComment)
            
            
        }
        
        //for-in 遍历字典
        let interestingNumbers = ["Prime":[2,3,4,5,22,8],
                                  "Fibonacci":[1,1,2,3,4,5],
                                  "Square":[1,4,5,56,25]]
        var largest = 0
       
        for (kind,numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                    print(largest)
                }
            }
        }
        
         print("++++++",largest)
        
        //循环..< 0，1，2，3不包括4
        //... 则是包括两个值
        var total = 0
        for i in 0..<4 {
            total += i
            print("for..<循环",total)
        }
        print(total)
        
        var n = 2
        while n < 100 {
            n = n * 2
        }
        print("while循环",n)
        
        
        
        var m = 2
        repeat{
            m = m * 2
            print("repeat循环",m)
        }while m < 100
        print(m)
        
        
        
        //元组
        //定义一个元组
        let http404Error = (404,"Not Found")
        //定义一个元组，也可以直接命名
        let SencondHttp = (newStatusCode:403,newstatusMessage:"Found")
        
        //给元祖元素命名
        let (statusCode,statusMessage) = http404Error
        //不需要的元祖元素可用“_”表示
        let (justTheStatusCode,_) = http404Error
        
        
        print("元组第一个元素\(statusCode),第二个元素为\(statusMessage)")
        print("使用下标方法\(http404Error.0)\(http404Error.1)")
        print("不需要的元祖的其中一个元素\(justTheStatusCode)")
        print("元组初始化命名\(SencondHttp)")
        
        
        //TODO:函数
        //调用greet函数
        let str11 = greet("xiaohong", day: "zhouSan")
        print("函数：两参，返回一个字符串",str11)
        
        print("函数：",greet("xiaoming", day: "zhouer"))
        //返回的是一个元组
        print("函数：无参，返回一元组",getGasPrices())

        //
        print("函数：计算总和",sumOf(2,2,2,2,2))
       //有参  无反
        print("函数：有参，无反", sayGoodBye("LiLei"))
        //函数嵌套 无参 有反
        print("函数：简单嵌套",returnFifteen())
        
        //多返回值函数(元组)
        let newCount = count("hello world")
        print("函数：多返回值,元音个数",newCount.vowels,"辅音个数",newCount.consonants,"其他",newCount.others)
        
        //多返回可选值函数
        let bouds = minMax([00,23421,3,-999,2341,333,214])
        print("最大值：\(bouds!.min)，最小值：\(bouds?.max)")
        
        //返回元素类型相同的元组
        let statistics = calculateStatistics([0,1,2,3,4,5,6,7,8,9])
        print("总和为",statistics.sum,"最小数",statistics.min,"最大数",statistics.1)
      
        //返回值类型为函数
        //1.调用外层函数
        let increment = makeIncrementer()
        //2.再调用嵌套函数
        let addOne = increment(10)
        print("函数：返回值为函数",addOne)
        
        //将另一个函数作为参数
        let numbers = [20,18,33,90,5]
        //numbers数组   
        //condition: lessThanTen  数组为参，返回值为BOOL的函数
        //由于在lessThanTen函数中已声明
        print("函数：将另一个函数作为参数",hasAnyMatches(numbers, condition: lessThanTen))
       //TODO:闭包
        numbers.map ({ (number: Int) -> Int in
            //自己定义的内容
            let result = 3 * number
            return result
        })
        //简写（系统封装好的闭包） -> 把numbers数组的元素遍历  逐一乘以3
        let mappedNumbers = numbers.map({number in 3 * number})
        print("闭包简写",mappedNumbers)
        //如果函数唯一一个参数是函数  可以省略括号
        //系统封装好的闭包  关于数组元素 排序$1 > $0 从小到大  反之
        let sortedNumbers = numbers.sort{ $1 > $0 }
        print("闭包简写",sortedNumbers)
        
    }
    
    
    //两个参，一个返回值的函数
    func greet(name:String,day:String) -> String{
        return"你好\(name),今天是\(day)"
    }

    //无参，返回值为三个类型为Double的元组
    func getGasPrices() -> (Double,Double,Double) {
        return(3.59,21.88,3.99)
    }
    
    //数组？元组？  返回一个整型？
    func sumOf(numbers:Int...) -> Int {
        var sum = 0
        for number in numbers {
            sum += number
        }
        return sum
        
    }
    
    func sumOf(arry:[AnyObject]) -> AnyObject {
        var sum = 0
        for number in arry {
            if number is Int {
                sum += number as! Int
            }
        }
        let sss = ["dkd": sum]
        return sss
    }
    
    //函数简单嵌套
    func returnFifteen() -> Int {
        var y = 10
        func add(){
            y += 5
        }
        add()
        return y
    }
    //无返回值
    func sayGoodBye(personName:String) {
        print("goodBye",personName,"函数有参无反")
    }
    
    //多返回值函数(计算标准美式元音、辅音)
    //三种类似mark注释方式
    //MARK:vowels/consonants/others
    //FIXME:vowels/consonants/others
    //TODO:vowels/consonants/others
    func count(string1:String) -> (vowels: Int,consonants: Int,others: Int) {
        var vowels = 0
        var consonants = 0
        var others = 0
        
        //遍历字符串中的每个字符
        for i in string1.characters {
            //？
            switch String(i).lowercaseString {
            case "a","e","i","o","u":
                vowels += 1
        case"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z":
                consonants += 1
                
            default:
                others += 1
            }
        }
        return(vowels,consonants,others)
        
    }
    
    //返回可选元组
    func minMax(array:[Int]) -> (min:Int,max:Int)? {
//看门狗
        
//        guard let xarray == array else {
//            print("nil")
//            return nil
//        }
        
        //如果数组为空  打印  不至于崩溃
        if array.count == 0 {
                print("数组为",array)
                return nil
        }else{
            //不为空则执行以下代码
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array {
                if value < currentMin {
                    currentMin = value
                }else if value > currentMax{
                    currentMax = value
                }
            }
            return(currentMax,currentMin)
        }
    }
    
    //实现一个数组最大元素、最小元素、数组元素相加值
    func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            }else if score < min{
                min = score
            }
            sum += score
        }
        
        return(min,max,sum)
    }
    
    //将一个函数作为返回值
    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int{
            return 1 + number
        }
        return addOne
    }
    
    //将另一个函数作为参数
    //1.
    func hasAnyMatches(list:[Int],condition:(Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                //ture  ==  YES
                return true
            }
        }
        return false
    }
    //2.作为要穿参的函数
    func lessThanTen(number:Int) -> Bool {
        return number < 10
    }
    
    
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

