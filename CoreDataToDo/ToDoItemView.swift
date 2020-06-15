//
//  ToDoItemView.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 12/4/19.
//  Copyright © 2019 Oksana Buksha. All rights reserved.
//

import SwiftUI

struct ToDoItemView: View {
    var title: String = ""
    var createdAt: String = ""

    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(title).font(.headline)
                Text(createdAt).font(.caption)
            }
        }
        
    }
}

struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView(title: "My great todo", createdAt: "Today ")
    }
}
