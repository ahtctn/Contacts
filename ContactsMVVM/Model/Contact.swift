//
//  Contact.swift
//  ContactsMVVM
//
//  Created by Ahmet Ali ÇETİN on 27.03.2023.
//

import Foundation

struct Contact {
    let name: String
    let surname: String
    let age: Int
    let gender: GenderChoice
}

enum GenderChoice: String {
    case male = "Male"
    case female = "Female"
    case unknown = "Gender Unknown"
}
