//
//  TodoListStore.swift
//  TodoListDemo
//
//  Created by 한수빈 on 11/14/23.
//

import Foundation
import SwiftUI
import Combine

class TodoListStore : ObservableObject {
    @Published var TodoList: [TodoList]
    init(TodoList: [TodoList] = []) {
        self.TodoList = TodoList
    }
}

