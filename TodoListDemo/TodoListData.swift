//
//  TodoListData.swift
//  TodoListDemo
//
//  Created by 한수빈 on 11/14/23.
//

import Foundation
import UIKit
import SwiftUI

struct TodoList : Codable,Identifiable {
    var id : Int
    var title : String
    var description : String
    var completed : Bool
}

var todoListData: [TodoList] = loadJson("sample.json")

func loadJson<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    
    else {
        fatalError("\(filename) not found.")
    }
    
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): \(error)")
    }
}
