//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceDivionWithAbsenceOnThatDayReturnsAbsence() throws {
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorroe = Date(timeIntervalSinceNow: 100000000000000)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        let actual = division.getAbsence(for: dateLaterToday)
        
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(absence2.takenOn, actual.takenOn)
        }
    }

}
