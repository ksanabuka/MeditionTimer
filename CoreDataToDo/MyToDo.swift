//
//  MyToDo.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 12/9/19.
//  Copyright © 2019 Oksana Buksha. All rights reserved.
//

import SwiftUI
import UIKit

struct MyToDo:View {
    

        @Environment(\.managedObjectContext) var managedObjectContext
        @FetchRequest(fetchRequest: ToDoItem.getAllToDoItems()) var toDoItems:FetchedResults<ToDoItem>
        @State private var newToDoItem = ""
        
        var body: some View {
//            NavigationView {
                List {
                    Section(header: Text("What's next?")){
                        HStack{
                            TextField("New item", text: self.$newToDoItem)
                            Button(action: {
                                let toDoItem = ToDoItem(context: self.managedObjectContext)
                                toDoItem.title = self.newToDoItem
                                toDoItem.createdAt = Date()
                                
                                do {
                                    try self.managedObjectContext.save()
                                }catch{
                                    print(error)
                                }
                                self.newToDoItem = ""
                            }){
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.green)
                                    .imageScale(.large)
                                
                            }
                        }
                    }.font(.headline)
                    Section(header: Text("To Do's")){
                        ForEach(self.toDoItems){ toDoItem in
                            ToDoItemView(title: toDoItem.title!, createdAt: "\(toDoItem.createdAt!)")
                        }.onDelete {indexSet in
                            let deleteItem = self.toDoItems[indexSet.first!]
                            self.managedObjectContext.delete(deleteItem)
                            
                            do{
                                try self.managedObjectContext.save()
                            }catch{
                                print(error)
                            }
                        }
                    }
                }
            
            .navigationBarTitle(Text("My ToDo's"), displayMode: .inline)
        .navigationBarItems(trailing: EditButton())
        }
    }
