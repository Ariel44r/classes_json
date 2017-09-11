class address {
    var street: String
    var number: String
    var neighborhood: String
    var zip_code: String
    init(street: String, number: String, neighborhood: String, zip_code: String) {
        self.street =  street
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

let dirección = address(street: "Calle 2", number: "344", neighborhood: "Colonia 2", zip_code: "11400")
//dirección.printData()

class contact {
    var name: String
    var phone: String
    var active: Bool
    var address: address
    init(name: String, phone: String, address: address, active: Bool) {
        self.name =  name
        self.phone = phone
        self.address = address
        self.active = active
    }
    func printData() {
        print("Name: \(name)")
        print("Phone: \(phone)")
        address.printData()
        print("Active: \(String(active))")
    }
}

let Jose = contact(name: "José", phone: "4444444444",address: dirección, active: true)
Jose.printData()