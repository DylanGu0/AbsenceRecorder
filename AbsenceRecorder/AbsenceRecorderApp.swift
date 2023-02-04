//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 20/01/2023.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
