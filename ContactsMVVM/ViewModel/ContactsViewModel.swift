//
//  ContactsViewModel.swift
//  ContactsMVVM
//
//  Created by Ahmet Ali ÇETİN on 27.03.2023.
//

import UIKit

class ContactViewModel {
    
    var contactList: [Contact] = []
    
    init() {
        addPeople()
    }
    
    var peopleData = [
        Contact(name: "Ahmet Ali", surname: "Çetin", age: 23, gender: GenderChoice.male),
        Contact(name: "Erkan", surname: "Sevim", age: 23, gender: GenderChoice.male),
        Contact(name: "Yunus Emre", surname: "Keskin", age: 23, gender: GenderChoice.male),
        Contact(name: "Erdem", surname: "Sarıkaya", age: 23, gender: GenderChoice.unknown),
        Contact(name: "Erbil Necip", surname: "Gümüş", age: 23, gender: GenderChoice.male),
        Contact(name: "Mehmet", surname: "Salihoğlu", age: 23, gender: GenderChoice.unknown),
        Contact(name: "Sami", surname: "Delirmez", age: 23, gender: GenderChoice.male),
        Contact(name: "Nevin Tuğba", surname: "Serçe", age: 23, gender: GenderChoice.female),
        Contact(name: "Demir", surname: "Toprak", age: 23, gender: GenderChoice.male),
        Contact(name: "Salih", surname: "Sedir", age: 23, gender: GenderChoice.male),
        Contact(name: "Tolga", surname: "Aydın", age: 23, gender: GenderChoice.male),
        Contact(name: "Melih Can", surname: "Macit", age: 23, gender: GenderChoice.male),
        Contact(name: "Esma", surname: "Sürücü Çetin", age: 23, gender: GenderChoice.female),
        Contact(name: "Ahmet", surname: "Çerkez", age: 23, gender: GenderChoice.male),
        Contact(name: "Didem", surname: "Sarıkaya", age: 23, gender: GenderChoice.female),
        Contact(name: "Ahmet", surname: "Yılmaz", age: 23, gender: GenderChoice.male)
    ]
    
    func addPeople() {
        contactList = peopleData
    }
}
