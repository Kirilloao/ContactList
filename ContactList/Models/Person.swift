//
//  Person.swift
//  ContactList
//
//  Created by Kirill Taraturin on 26.01.2023.
//


struct Person {
    
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        
        var names = DataStore().names
        var surnames = DataStore().surnames
        var emails = DataStore().emails
        var phoneNumbers = DataStore().phoneNumbers
        
        var persons = [Person]()
        
        for _ in 1...names.count {
            
            let randomName = names.randomElement()!
            names = names.filter { $0 != randomName }
            
            let randomSurname = surnames.randomElement()!
            surnames = surnames.filter { $0 != randomSurname }
            
            let randomEmail = emails.randomElement()!
            emails = emails.filter { $0 != randomEmail }
            
            let randomPhoneNumber = phoneNumbers.randomElement()!
            phoneNumbers = phoneNumbers.filter { $0 != randomPhoneNumber}
            
            let person = Person(
                name: randomName,
                surname: randomSurname,
                email: randomEmail,
                phoneNumber: randomPhoneNumber)
            
            persons.append(person)
        }
        return persons
    }
}

class DataStore {
    var names = [
        "Kirill",
        "Alex",
        "John",
        "Vlad",
        "Tim",
        "Ronald",
        "Luke",
        "Wayne"
        
    ]
    var surnames = [
        "Taraturin",
        "Rooney",
        "Cook",
        "Shaw",
        "Schmeihel",
        "Badruk",
        "Toshech",
        "Ings"
    ]
    
    var emails = [
        "ball002@mail.ru",
        "table112@mail.ur",
        "storage222@mail.ru",
        "pencil941@mail.ru",
        "screen4412334@list.ru",
        "water007@mail.ru",
        "laptop01@gmail.com",
        "lovelove49991@gmail.com"
    ]
    
    var phoneNumbers = [
        "89679774091",
        "89642930909",
        "89801110201",
        "89220430303",
        "89740004040",
        "89100022332",
        "89470003322",
        "89877772211"
    ]
}



