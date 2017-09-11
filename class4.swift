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
let dirección1 = address(street: "Calle 1", number: "A10", neighborhood: "Colonia 1", zip_code: "11400")
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
let Héctor = contact(name: "Héctor", phone: "5555555555",address: dirección1, active: false)
//Jose.printData()

class class4 {
    var name: String
    var last_name: String
    var contacts = [Int: contact]()
    init(name: String, last_name: String, contacts: [Int:contact]) {
        self.name = name
        self.last_name = last_name
        for index in 0 ..< contacts.count {
            self.contacts[index] = contacts[index]
        }
    }
    func printData() {
        print("Name: \(name)")
        print("Last Name: \(last_name)")
        for index in 0 ..< contacts.count {
            contacts[index]!.printData()
        }
    }
}

let Luis = class4(name: "Luis", last_name: "Martínez", contacts: [0:Jose, 1: Héctor])
Luis.printData()