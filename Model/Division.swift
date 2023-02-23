//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 20/01/2023.
//

import Foundation

class Division: Codable {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code:String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first
    }
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        for i in 1...size {
            let student = Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        return division
    }
    #endif
    
    static let examples = [Division.createDivision(code: "vCW-1", of: 11),
                           Division.createDivision(code: "vCW-2", of: 8),
                           Division.createDivision(code: "vCW-3", of: 17),
                           Division.createDivision(code: "vCW-4", of: 10),
                           Division.createDivision(code: "vCW-5", of: 15),]
}
