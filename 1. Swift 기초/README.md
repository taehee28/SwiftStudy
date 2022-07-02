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
