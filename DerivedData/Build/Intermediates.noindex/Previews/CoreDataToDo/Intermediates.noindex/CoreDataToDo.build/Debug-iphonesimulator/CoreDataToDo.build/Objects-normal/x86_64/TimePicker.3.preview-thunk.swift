@_private(sourceFile: "TimePicker.swift") import CoreDataToDo
import Combine
import SwiftUI
import SwiftUI

extension TimePicker_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/TimePicker.swift", line: 78)
        AnyView(__designTimeSelection(TimePicker(selectedHour: .constant(__designTimeInteger("#11229.[4].[0].property.[0].[0].arg[0].value.arg[0].value", fallback: 4)), selectedMin: .constant(__designTimeInteger("#11229.[4].[0].property.[0].[0].arg[1].value.arg[0].value", fallback: 5)), selectedSecond:  .constant(__designTimeInteger("#11229.[4].[0].property.[0].[0].arg[2].value.arg[0].value", fallback: 6))), "#11229.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension TimePicker {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/TimePicker.swift", line: 32)

        AnyView(__designTimeSelection(VStack {
            __designTimeSelection(HStack {

                __designTimeSelection(VStack {
                    __designTimeSelection(Picker(selection: __designTimeSelection(self.$selectedHour, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.arg[0].value.[0].value", fallback: "Hour")), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value")) {
                        __designTimeSelection(ForEach(0..<24) { hour in
                            __designTimeSelection(Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(hour, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].value", fallback: " Hour"))"), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0]")
                        }, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0]")
                    }, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                }
                .frame(minWidth: __designTimeInteger("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 100), maxWidth: .infinity)
                .clipped()
                .border(__designTimeSelection(Color.blue, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value")), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")

                __designTimeSelection(VStack {
                    __designTimeSelection(Picker(selection: __designTimeSelection(self.$selectedMin, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.arg[0].value.[0].value", fallback: "Min")), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value")) {
                        __designTimeSelection(ForEach(0..<61) { min in
                            __designTimeSelection(Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(min, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].value", fallback: " Min"))"), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0]")
                        }, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0]")
                    }, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                }
                .frame(minWidth: __designTimeInteger("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 100), maxWidth: .infinity)
                .clipped()
                .border(__designTimeSelection(Color.yellow, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[0].value")), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")

                __designTimeSelection(VStack {
                    __designTimeSelection(Picker(selection: __designTimeSelection(self.$selectedSecond, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value.arg[0].value.[0].value", fallback: "Sed")), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[1].value")) {
                        __designTimeSelection(ForEach(0..<61) { sec in
                            __designTimeSelection(Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(sec, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[2].value", fallback: " Sec"))"), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0]")
                        }, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0]")
                    }, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0]")
                }

                .frame(minWidth: __designTimeInteger("#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[0].arg[0].value", fallback: 100), maxWidth: .infinity)
                .clipped()
                .border(__designTimeSelection(Color.purple, "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2].modifier[2].arg[0].value")), "#11229.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
            }, "#11229.[3].[3].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Text("\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "hour:min:sec: "))\(__designTimeSelection(self.selectedHour, "#11229.[3].[3].property.[0].[0].arg[0].value.[1].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#11229.[3].[3].property.[0].[0].arg[0].value.[1].arg[0].value.[2].value", fallback: ""))"), "#11229.[3].[3].property.[0].[0].arg[0].value.[1]")

        }, "#11229.[3].[3].property.[0].[0]"))
#sourceLocation()
    }
}

typealias SelectedDuration = CoreDataToDo.SelectedDuration
typealias TimePicker = CoreDataToDo.TimePicker
typealias TimePicker_Previews = CoreDataToDo.TimePicker_Previews