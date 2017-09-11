//declarate_address_class
class address {
    var street: String
    var number: String
    var neighborhood: String
    var zip_code: String
    init(street: String, number: String, neighborhood: String, zip_code: String) {
        self.street = street
        self.number = number
        self.neighborhood = neighborhood
        self.zip_code = zip_code
    }
    func printData() {
        print("Street: \(street)")
        print("Number: \(number)")
        print("Neighborhood: \(neighborhood)")
        print("Zip Code: \(zip_code)")
    }
}

//declarate class2 class
class  class2 {
    var name: String
    var last_name: String
    var age: Int 
    //Instantiate the address class under the same name for the object and without initial value
    var address: address
    init(name: String, last_name: String, age: Int, address: address) {
        self.name = name
        self.last_name = last_name
        self.age = age
        self.address = address
    }  
    func printData() {
        print("Name: \(name)")
        print("Last Name: \(last_name)")
        print("age: \(String(age))")
        address.printData()
    }  
}

let direccion = address(street: "Mar de Banda", number: "10", neighborhood: "Popotla", zip_code: "11400")
//direccion.printData()

let Luis = class2(name: "Luis", last_name: "Martínez", age: 27, address: direccion)
Luis.printData()