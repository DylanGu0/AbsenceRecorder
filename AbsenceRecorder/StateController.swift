//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
