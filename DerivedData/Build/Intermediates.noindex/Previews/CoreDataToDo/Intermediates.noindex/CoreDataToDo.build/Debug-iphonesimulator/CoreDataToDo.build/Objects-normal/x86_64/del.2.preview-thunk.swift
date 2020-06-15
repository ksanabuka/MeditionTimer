@_private(sourceFile: "del.swift") import CoreDataToDo
import SwiftUI
import SwiftUI

extension del_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/del.swift", line: 33)
        AnyView(del())
#sourceLocation()
    }
}

extension del {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/del.swift", line: 16)

    
    AnyView(NavigationView {
        NavigationLink(destination:
            Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value.[0].value", fallback: "Detail"))
                .navigationBarTitle(Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Detail")))
        ) {
            Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Push"))
        }.navigationBarTitle(Text(__designTimeString("#17269.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Master")))
    })
#sourceLocation()
    }
}

typealias del = CoreDataToDo.del
typealias del_Previews = CoreDataToDo.del_Previews