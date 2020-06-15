//
//  ToDoItem.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 12/3/19.
//  Copyright © 2019 Oksana Buksha. All rights reserved.
//

import SwiftUI

import Foundation
import CoreData

public class ToDoItem: NSManagedObject, Identifiable {
    @NSManaged public var createdAt:Date?
    @NSManaged public var title:String?

}

extension ToDoItem {
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem> {
        let request: NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
