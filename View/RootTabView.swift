//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chat.pie")
                    Text("Statistics")
                }
            
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(StateController())
    }
}
