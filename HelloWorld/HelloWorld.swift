
// Constant / Unchangable Variables in Swift
// Format -> let VariableName: VariableType = VariableValue
let constantHelloWorld : String  = "Hello, Constant World !"
print(constantHelloWorld)


// Variable / Editable Variables in Swift
// Format -> var VariableName: VariableType = VariableValue
var variableHelloWorld: String = "Hello, Variable World !"
print(variableHelloWorld)

variableHelloWorld = "Hello, Shubhp 🌱"
print(variableHelloWorld)

// Arrays
var names: [String] = ["Shubh", "Tony", "Steve"]
print(names)

// Append Values to Array
// Append single value
names.append("Peter")
print(names)

// Append from an existing Sequence
names.append(contentsOf: ["Hawk", "Thor"])
print(names)

// Loops
for name: String in names {
    if name.lowercased() == "peter" {
        print("Found a name using lowercased for " + name)
    }
    else if name.uppercased() == "SHUBH" {
        print("Found a name using uppercased for \(name)")
    }
    else if name.contains("o") {
        print("Found a name containing 'o' for \(name)")
    }
    else {
        print("Found some random name \(name)")
    }
}

// Dict like Arrays
var dictLikeArray: [Int : String] = [
    0 : "Shubh",
    1 : "Steve",
    2 : "Tony",
    3 : "Peter",
]
print(dictLikeArray)

for item: (key: Int, value: String) in dictLikeArray {
    print("\(item.key) : \(item.value)")
}


// Set Values using condition
let conditionalValue: String = if dictLikeArray.values.first == "Shubh" {
    "UnSorted" 
} else if dictLikeArray.values.sorted().first == "Shubh" {
    "Sorted"
} else {
    "Something"
}
print("Conditional Value \(conditionalValue)")

// Set Values using Ternary
let ternaryValue: String = dictLikeArray.values.first == "Shubh" ?
    "UnSorted" : (dictLikeArray.values.sorted().first == "Shubh" ? "Sorted" : "Something")
print("Ternary Value \(ternaryValue)")
