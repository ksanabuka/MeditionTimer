@_private(sourceFile: "TimePicker.swift") import CoreDataToDo
import Combine
import SwiftUI
import SwiftUI

extension TimePicker_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/TimePicker.swift", line: 78)
        AnyView(TimePicker(selectedHour: .constant(__designTimeInteger("#11229.[4].[0].property.[0].[0].arg[0].value.arg[0].value", fallback: 4)), selectedMin: .constant(__designTimeInteger("#11229.[4].[0].property.[0].[0].arg[1].value.arg[0].value", fallback: 5)), selectedSecond:  .constant(__designTimeInteger("#11229.[4].[0].property.[0].[0].arg[2].value.arg[0].value", fallback: 6))))
#sourceLocation()
    }
}

extension TimePicker {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/TimePicker.swift", line: 32)

        AnyView(VStack {
            HStack {

                VStack {
                    Picker(selection: self.$selectedHour, label: Text(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.arg[0].value.[0].value", fallback: "Hour"))) {
                        ForEach(0..<24) { hour in
                            Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: ""))\(hour)\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].value", fallback: " Hour"))")
                        }
                    }
                }
                .frame(minWidth: __designTimeInteger("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 100), maxWidth: .infinity)
                .clipped()
                .border(Color.blue)

                VStack {
                    Picker(selection: self.$selectedMin, label: Text(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.arg[0].value.[0].value", fallback: "Min"))) {
                        ForEach(0..<61) { min in
                            Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: ""))\(min)\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].value", fallback: " Min"))")
                        }
                    }
                }
                .frame(minWidth: __designTimeInteger("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 100), maxWidth: .infinity)
                .clipped()
                .border(Color.yellow)

                VStack {
                    Picker(selection: self.$selectedSecond, label: Text(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.arg[0].value.[0].value", fallback: "Sed"))) {
                        ForEach(0..<61) { sec in
                            Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: ""))\(sec)\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].value", fallback: " Sec"))")
                        }
                    }
                }

                .frame(minWidth: __designTimeInteger("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100), maxWidth: .infinity)
                .clipped()
                .border(Color.purple)
            }
            Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "hour:min:sec: "))\(self.selectedHour)\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[1].arg[0].value.[2].value", fallback: ""))")

        })
#sourceLocation()
    }
}

typealias SelectedDuration = CoreDataToDo.SelectedDuration
typealias TimePicker = CoreDataToDo.TimePicker
typealias TimePicker_Previews = CoreDataToDo.TimePicker_Previews