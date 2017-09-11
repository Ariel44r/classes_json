class class1 {
    var name: String
    var last_name: String
    var age: Int
    init(name: String, last_name: String, age: Int) {
        self.name = name
        self.last_name = last_name
        self.age = age
    }
    func printData() {
        print("Nombre: \(name)")
        print("Apellido: \(last_name)")
        print("Age: \(String(age))")
    }
}

let Luis = class1(name: "Luis", last_name: "Martínez", age: 27)
Luis.printData()