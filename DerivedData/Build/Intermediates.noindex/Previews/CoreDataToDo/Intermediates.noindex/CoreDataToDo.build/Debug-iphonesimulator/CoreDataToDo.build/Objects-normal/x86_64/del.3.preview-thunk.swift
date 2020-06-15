@_private(sourceFile: "del.swift") import CoreDataToDo
import SwiftUI
import SwiftUI

extension del_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/del.swift", line: 33)
        AnyView(__designTimeSelection(del(), "#17269.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension del {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/del.swift", line: 16)

    
    AnyView(__designTimeSelection(NavigationView {
        __designTimeSelection(NavigationLink(destination:
            __designTimeSelection(Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value.[0].value", fallback: "Detail"))
                .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Detail")), "#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.modifier[0].arg[0].value")), "#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")
        ) {
            __designTimeSelection(Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Push")), "#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
        }.navigationBarTitle(__designTimeSelection(Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Master")), "#17269.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#17269.[1].[1].property.[0].[0].arg[0].value.[0]")
    }, "#17269.[1].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias del = CoreDataToDo.del
typealias del_Previews = CoreDataToDo.del_Previews