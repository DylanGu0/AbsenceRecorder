//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Guo, Dylan (Coll) on 23/02/2023.
//

import Foundation

extension FileManager {
    private func getDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func saveFile <T: Codable> (to name: String, object: T) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object) {
            if let json = String(data: encoded, encoding: .utf8) {
                let url = getDirectory().appendingPathComponent(name)
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func loadFile <T: Codable> (from name: String) -> T? {
        let url = getDirectory().appendingPathComponent(name)
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data) {
                return loaded
            } else {
                print("Decoding Failed")
                return nil
            }
        } else {
            print("There was no file at the path entered")
            return nil
        }
    }
}
