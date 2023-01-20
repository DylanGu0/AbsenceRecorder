//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 20/01/2023.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forname
        self.surname = surname
        self.birthday = birthday
    }
}
