@_private(sourceFile: "ToDoItemView.swift") import CoreDataToDo
import SwiftUI
import SwiftUI

extension ToDoItemView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ToDoItemView.swift", line: 28)
        AnyView(ToDoItemView(title: __designTimeString("#6585.[2].[0].property.[0].[0].arg[0].value.[0].value", fallback: "My great todo"), createdAt: __designTimeString("#6585.[2].[0].property.[0].[0].arg[1].value.[0].value", fallback: "Today ")))
#sourceLocation()
    }
}

extension ToDoItemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ToDoItemView.swift", line: 16)
        AnyView(HStack{
            VStack(alignment: .leading){
                Text(title).font(.headline)
                Text(createdAt).font(.caption)
            }
        })
#sourceLocation()
    }
}

typealias ToDoItemView = CoreDataToDo.ToDoItemView
typealias ToDoItemView_Previews = CoreDataToDo.ToDoItemView_Previews