class contact {
    var name: String
    var phone: String
    init(name: String, phone: String) {
        self.name = name
        self.phone = phone
    }
    func printData() {
        print("Name Contact: \(name)")
        print("Phone Contact \(phone)")
    }
}

class class3 {
    var name: String
    var last_name: String
    var contacts = [Int: contact]()
    init(name: String, last_name: String, contacts: [Int: contact]) {
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

let Joanna = contact(name: "Joanna", phone: "5576605244")
let Lidia = contact(name: "Lidia", phone: "5513075668")
//Lidia.printData()

let Ariel = class3(name: "Ariel", last_name: "Ramírez", contacts: [0:Joanna, 1: Lidia])
Ariel.printData()

