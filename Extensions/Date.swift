//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 01/02/2023.
//

import Foundation

extension Date {
    func getDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
    
    func previousDate() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    
    func nextDate() -> Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self) ?? Date()
    }
}
