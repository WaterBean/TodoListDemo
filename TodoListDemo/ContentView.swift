//
//  ContentView.swift
//  TodoListDemo
//
//  Created by 한수빈 on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var todoListStore : TodoListStore = TodoListStore(TodoList: todoListData)
    
    var body: some View {
    
        
        NavigationStack{
            List {
                ForEach( 0..<todoListStore.TodoList.count, id: \.self) { i in
                    HStack (spacing: 10){
                        if todoListStore.TodoList[i].completed {
                            Image(systemName: "checkmark.seal")
                        } else {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(Color.blue)
                        }
                            VStack(alignment: .leading) {
                                Text(todoListStore.TodoList[i].title)
                                    .fontWeight(.bold)
                                
                                Text(todoListStore.TodoList[i].description)
                                    .font(.caption)
                                    .foregroundStyle(Color.gray)
                                
                        }
                    }
                }
            }
        }
        .navigationBarTitle(Text("To Do List"))
        
    }
}

#Preview {
    ContentView()
}
