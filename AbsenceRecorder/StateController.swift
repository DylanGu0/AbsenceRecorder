//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 04/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
    }
    
    func createFilePath(name: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(name)
        return url
    }
    
    func loadFromFile() {
        if let loadedData: [Division] = FileManager.default.loadFile(from: "divisions.json") {
            divisions = loadedData
        }
    }
    
    func saveToFile() {
        FileManager.default.saveFile(to: "divisions.json", object: divisions)
    }
}
