//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 20/01/2023.
//

import SwiftUI

struct DivisionsView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: Absence(date: Date(), students: division.students))) {
                    DivisionItem(division: division)
                }
            }
            .onAppear(perform: {state.saveToFile()})
            .navigationTitle(currentDate.getDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {currentDate = currentDate.previousDate()}) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {currentDate = currentDate.nextDate()}) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
    

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView()
            .environmentObject(StateController())
    }
}
