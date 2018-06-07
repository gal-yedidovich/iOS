import Foundation


//Serialize
let object:[String: Any] = ["grade 1": 10, "grade 2": 20, "grade 3": 30, "grade 4": 40] //some object
let jsonData = try JSONSerialization.data(withJSONObject: object, options: .sortedKeys) //serialize to data
let jsonStr = String(data: jsonData, encoding: String.Encoding.utf8)! //encode data as string - only for printing
print(jsonStr) //print

//Deserialize
let json = """
[
    {
        "first" : "Bubu",
        "last" : "Bubu is the king",
        "gender" : "male"
    },
    {
        "first" : "Groot",
        "quote" : "I am groot",
        "gender" : "other"
    },
    {
        "first" : "Deadpool",
        "last" : "Chimichanga",
        "gender" : "male"
    },
]
"""

//convert to Swift object
let jObject = try! JSONSerialization.jsonObject(with: json.data(using: .utf8)!, options: .mutableContainers) as! [[String: Any]]

//work with object from json
for item in jObject {
    print("first name: \(item["first"]!)")
}
