# 2. 명명법 / 콘솔로그 / 문자열 보간법

## 명명법
함수(메서드), 변수, 상수 -> Lower Camel Case  
타입(클래스, 구조체, enum, 익스텐션...) -> Upper Camel Case

## 콘솔로그 
* `print` - 단순 출력
* `dump` - 인스턴스가 가지는 프로퍼티의 값까지 자세히 출력 

## 문자열 보간법
문자열 안에서 변수나 상수의 값을 출력하기 위해 사용. Kotlin의 `$`와 같은 것
```swift
"제 이름은 \(name)입니다"
```

</br>

# 3. 상수와 변수

## 선언하기
* 상수 - `let`
* 변수 - `var`

```swift
// 변수이름: 타입 = 값 
let constant: String = "상수"
var variable: String = "변수"

let text = "할당하려는 값의 타입이 확실하다면 타입 생략 가능"
```

## 선언 후 값 할당
상수와 변수 둘 다 선언 후에 값을 할당할 수도 있다.  
선언 후 값을 할당하는 경우에는 타입을 생략할 수 없다.  
`let`의 경우 최초로 값을 할당한 후에는 값을 재할당 할 수 없다. 

```swift
let sum: Int
let a = 1
let b = 2

sum = a + b

// error!
sum = b + 3
```

</br>

# 4. 기본 데이터 타입

## `Bool`
* `true`와 `false`만을 값으로 가지는 타입.
* 0이나 1같은 값을 `Bool`로 취급하지 않음.

## 정수 
* `Int` : 기본적으로 64비트 정수형.
* `UInt` : 기본적으로 64비트 양의 정수형.
  
## 실수
* `Float` : 32비트 부동소수형.
* `Double` : 64비트 부동소수형.

## 문자열
* `Character` : 유니코드를 사용하여 문자 1개를 나타냄. 큰따옴표("") 사용.
* `String` : 유니코드를 사용하여 문자열을 나타냄. 큰따옴표("") 사용.  

</br>

# 5. `Any`, `AnyObject`, `nil`

## Any
Swift의 모든 타입을 지칭하는 키워드.  
Java의 `Object`나 Kotlin의 `Any`라고 생각하면 될 것 같다.  
`Any`는 런타임 시점에 타입이 결정된다.  

## AnyObject
Swift의 모든 _클래스 타입_ 을 지칭하는 프로토콜. 클래스의 인스턴스만 취급한다.  
기본 데이터 타입, 구조체, 열거형, 클로저 전부 저장할 수 없음. 

## nil 
'없음'을 의미하는 키워드.  
변수에 nil을 할당하기 위해서는 변수를 _옵셔널_ 타입으로 지정해주어야 한다.  
```
💡null과의 차이점

null은 포인터가 가르키는 객체가 없다는 의미이고,
nil은 특정 타입의 값이 없다는 의미이다. 
```

</br>

# 6. Collection 타입

## Array
순서가 있는 리스트
```swift
// 기본 생성법
var intArray: Array<Int> = Array<Int>()

// 축약 리터럴 표현
// Array<Double>과 [Double]은 동일한 표현이다. 
var doubleArray: [Double] = [Double]()

// 우항을 빈 괄호로 두어 비어있는 Array 생성 가능
var charArray: [Character] = []

// let을 사용하면 불변 리스트 생성
let immutableArray = [1, 2, 3]
```

## Dictionary
Java의 `Map`과 같다.  
key와 value의 쌍을 가지는 자료구조. 
```swift
// key가 String이고 value가 Any인 Dictionary 선언.
// Array와 마찬가지로 축약 리터럴 표현이 존재한다. 
var anyDictionary: Dictionary<String, Any> = [String: Any]()

// 빈 Dictionary 생성
// 마찬가지로 let을 사용하면 불변 Dictionary 생성 가능 
let emptyDictionary: [String: String] = [:]

// 초기값을 넣으면서 생성 
let initialized: [String: String] = ["apple": "사과", "banana": "바나나"]
```
```swift
// 값 저장
anyDictionary["one"] = 1
anyDictionary["two"] = 2

// 값 제거하는 두가지 방법 
anyDictionary.removeValue(forKey: "one")
anyDictionary["two"] = nil 

```

## Set
중복값을 허용하지 않고, 순서가 없는 리스트
```swift
// 빈 Set 생성
// 축약 리터럴 표현 없음
var intSet: Set<Int> = Set<Int>()

// 초기값 넣으면서 생성
let charSet: Set<Character> = ["A", "B", "C"]
```
Set에서는 다음과 같은 집합 연산이 가능하다. 
```swift
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()

// 교집합
let intersection: Set<Int> = setA.intersection(setB)

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
```

</br>

# 7. 함수 
함수의 기본적 선언
```swift
func sum(a: Int, b: Int) -> Int {
    let result = a + b
    return result
}
```
반환값이 없는 경우, `Void`로 표시하거나 아예 반환 타입을 생략할 수 있다.
```swift
func printHello() { print("Hello") }
```  
간단한 함수의 경우 줄바꿈 없이 작성해도 좋다. 

함수를 호출하는 방법
```swift
sum(a: 1, b: 2)
```
argument의 이름을 명시하면서 값을 전달한다. 

</br>

# 8. 함수 고급
## 파라미터 기본 값
함수의 파라미터 정의 부분에서 파라미터의 기본값을 지정해줄 수 있다. 
```swift
func sum(a: Int = 0, b: Int = 0) -> Int {
    return a + b
}

// 기본값을 가지는 매개변수는 호출 시 생략 가능
sum()
```
기본값을 가지는 파라미터는 파라미터 목록에서 뒤쪽에 위치하는 것이 좋다. 

## 전달인자 레이블
함수를 호출하는 곳에서 사용할 인자의 이름을 지정한다.  
같은 함수여도 전달인자 레이블이 다르다면 다른 함수로 간주하여 중복 선언이 가능함.  
```swift
func sum(x a: Int, y b: Int) -> Int {
    // 함수 내부에서는 기존 레이블 그대로 사용 
    return a + b
}

// 호출할때는 지정된 전달인자 레이블을 사용
sum(x: 1, y: 2)

// 와일드카드 레이블
func printHello(_ name: String) {
    print("Hello \(name)")
}

// 와일드카드 레이블의 경우 레이블을 명시하지 않아도 됨 
printHello("swift")
```

## 가변 파라미터
파라미터의 개수를 가변적으로 받을 수 있다. 
```swift
func printNumbers(numbers: Int...) {
    print(numbers)
}

// 원하는 만큼 인자를 넘길 수 있음
printNumbers(numbers: 1, 2, 3, 4, 5, 6, 7)
```
가변 파라미터는 파라미터 목록에서 뒤쪽에 위치하는 것이 좋다. 

## 데이터 타입으로서의 함수
Swift에서 함수는 1급 객체로 취급한다. 
```swift
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 인자의 레이블을 명시해서 변수에 넣어준다 
let myFunction: (Int, Int) -> Int = sum(a:b:)

myFunction(1, 2)
```
파라미터가 있는 함수의 경우 호출 시점에서 인자의 레이블을 꼭 입력해주어야 하는데,  
myFunction을 선언할 때 레이블을 이미 전달했기 때문에 myFunction 내부에서 sum에 인자만 넘겨주면 됨

## 참조 전달
기본적으로 함수 내에서 파라미터를 통해 전달받은 변수는 그 값을 변경할 수 없다.  
값을 변경하기 위해서는 `inout` 키워드를 통해 변수의 참조를 전달받아야 한다. 
```swift
func swap(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var (x, y) = (2, 3)

// '&' 기호를 붙여서 참조를 전달 
swap(&x, &y)

// 결과 -> x = 3, y = 2 로 변경됨 
```

</br>

# 9. 조건문
## if 
특이한 점은 조건문에 괄호를 사용하지 않는 점(사용할 수는 있다).
```swift
if someValue < 10 {
    print("under 10")
} else if someValue < 20 {
    print("under 20")
} else {
    print("over 20")
}
```

삼항연산자가 존재한다.
```swift
let result1
if someValue > 10 {
    result1 = "over 10"
} else {
    result1 = "under 10"
}

// 삼항연산자로 간략화 
let result2 = someValue > 10 ? "over 10" : "under 10"
```

nil 체크의 경우 Nil-Coalescing 연산자가 존재한다. 
```swift
let c = a != nil ? a! : b

// Nil-Coalescing 연산으로 간략화 
let c = a ?? b
```
Kotlin의 `?:` 연산자와 같다고 보면 될 것 같다. 

## switch 
생긴 것은 Java의 switch와 비슷하다.  
* `break` 키워드를 사용하지 않아도 자동으로 적용됨.  
* case에 다양한 조건 사용 가능.  
* 하나의 case에 여러개의 조건을 써넣을 수 있음(Java처럼 블록 없는 case를 써서 여러 case를 묶지 않음).  
```swift
let char: Character = "A"

switch char {
    case "a", "A":
        print("The letter A")
    default:
        print("Not the letter A")
}
```

범위 연산자 사용 가능함.
```swift
let score = 72

switch score {
    case 50..<60: 
        print("grade: D")
    case 60..<70: 
        print("grade: C")
    case 70..<80: 
        print("grade: B")
    case 80..<90: 
        print("grade: A")
    case 90...100: 
        print("grade: A+")
    default:
        print("grade: F")
}
```

Tuple 사용 가능함.
```swift
let somePoint = (1, 1)

switch somePoint {
    case (0, 0):
        print("\(somePoint) is at the origin")
    case (_, 0):
        print("\(somePoint) is on the x-axis")
    case (0, _):
        print("\(somePoint) is on the y-axis")
    case (-2...2, -2...2):
        print("\(somePoint) is inside the box")
    default:
        print("\(somePoint) is outside of the box")
}
```

Value Binding 가능함.
```swift
let anotherPoint = (2, 0)

switch anotherPoint {
    case (let x, 0):
        print("on the x-axis with an x value of \(x)")
    case (0, let y):
        print("on the y-axis with a y value of \(y)")
    case let (x, y):
        print("somewhere else at (\(x), \(y))")
}
```

`where` 키워드로 추가적인 조건을 지정할 수 있다.
```swift
let yetAnotherPoint = (1, -1)

switch yetAnotherPoint {
    case let (x, y) where x == y:
        print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
        print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
        print("(\(x), \(y)) is just some arbitrary point")
}
```

`fallthrough` 키워드를 사용하면 바로 다음 case의 블록을 실행시킨다(다음 case의 조건은 검사하지 않음).
```swift
let char: Character = "A"

switch char {
    case "A":
        print("The letter A")
        fallthrough
    case "a":
        print("same as the letter a")
    default:
        print("Not the letter A")
}
```
