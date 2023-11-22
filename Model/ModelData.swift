//
//  model.swift
//  landmark
//
//  Created by Deborah Alonge on 11/14/23.
//

import Foundation


@Observable
class ModelData{
    var landmarks: [Landmark] = load(filename: "landmarkData.json")
}
func load<T: Decodable>(filename: String) -> T{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldnt find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldnt load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("couldnt parse \(filename) as \(T.self):\n\(error)")
    }
}
