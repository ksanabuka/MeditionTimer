@_private(sourceFile: "ToDoItemView.swift") import CoreDataToDo
import SwiftUI
import SwiftUI

extension ToDoItemView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ToDoItemView.swift", line: 28)
        AnyView(__designTimeSelection(ToDoItemView(title: __designTimeString("#6585.[2].[0].property.[0].[0].arg[0].value.[0].value", fallback: "My great todo"), createdAt: __designTimeString("#6585.[2].[0].property.[0].[0].arg[1].value.[0].value", fallback: "Today ")), "#6585.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ToDoItemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/ToDoItemView.swift", line: 16)
        AnyView(__designTimeSelection(HStack{
            __designTimeSelection(VStack(alignment: .leading){
                __designTimeSelection(Text(__designTimeSelection(title, "#6585.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")).font(.headline), "#6585.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
                __designTimeSelection(Text(__designTimeSelection(createdAt, "#6585.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value")).font(.caption), "#6585.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
            }, "#6585.[1].[2].property.[0].[0].arg[0].value.[0]")
        }, "#6585.[1].[2].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ToDoItemView = CoreDataToDo.ToDoItemView
typealias ToDoItemView_Previews = CoreDataToDo.ToDoItemView_Previews