//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    var body: some View {
        Text("Absence View - \(division.code)")
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(division: Division.examples[0])
    }
}
