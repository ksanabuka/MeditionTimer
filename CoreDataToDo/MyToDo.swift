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
//                
//                .foregroundColor(Color(red: 139/255, green: 125/255, blue: 105/255))
//              .navigationBarItems(leading:
//                  NavigationLink(
//                      destination: TimerView()
//                        .navigationBarTitle(Text("Session 1"), displayMode: .inline)
//                    .navigationBarItems(trailing:
//                        NavigationLink("Settings", destination: ContentView())
//                    )
//                    )
//                        {
//                          Image(systemName: "house")
//                          .resizable()
//                          .scaledToFit()
//                          .frame(width: 40, height: 40)
//                          .clipped()
//
//              }, trailing: EditButton())

//            }
        }
    }
