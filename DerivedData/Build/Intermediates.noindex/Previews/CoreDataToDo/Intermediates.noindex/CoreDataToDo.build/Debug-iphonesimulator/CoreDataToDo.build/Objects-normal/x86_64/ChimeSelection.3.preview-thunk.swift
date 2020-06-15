@_private(sourceFile: "ChimeSelection.swift") import CoreDataToDo
import SwiftUI
import SwiftUI

extension ChimeSelection_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/ChimeSelection.swift", line: 57)
        AnyView(__designTimeSelection(ChimeSelection(), "#9500.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ChimeSelection {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/ChimeSelection.swift", line: 22)
        
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(Form {
                __designTimeSelection(Section {
                    __designTimeSelection(Text(__designTimeString("#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Name your Meditation Session")), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                }, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                __designTimeSelection(Section {
                    __designTimeSelection(Picker (selection: __designTimeSelection($chimeIndex, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.arg[0].value.[0].value", fallback: "Country")), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value")) {
                        
                        __designTimeSelection(VStack {
                                                              __designTimeSelection(Picker(__designTimeString("#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Numbers"), selection: __designTimeSelection($selectorIndex, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[1].value")) {
                                                                  __designTimeSelection(ForEach(0 ..< repeat_options.count) { index in
                                                                      __designTimeSelection(Text(__designTimeSelection(self.repeat_options[__designTimeSelection(index, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value")], "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value")).tag(__designTimeSelection(index, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                                                  }, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0]")
                                                              }
                                                              .pickerStyle(__designTimeSelection(SegmentedPickerStyle(), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].modifier[0].arg[0].value")), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0]")
                                                            
                                                              __designTimeSelection(Text("\(__designTimeString("#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "Selected value is: "))\(__designTimeSelection(repeat_options[__designTimeSelection(selectorIndex, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[1].value.arg[0].value.[0].value")], "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[2].value", fallback: ""))").padding(), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1]")
                                                      }, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0]")
                        
                        __designTimeSelection(ForEach(0 ..< chimes.count){
                            __designTimeSelection(Text(__designTimeSelection(self.chimes[__designTimeSelection($0, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].arg[0].value.[0].value")], "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].arg[0].value")).tag(__designTimeSelection($0, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0].modifier[0].arg[0].value")), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[1].arg[1].value.[0]")
                        }, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[2].value.[1]")
                    }, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0]")
                __designTimeSelection(Text(__designTimeString("#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].value", fallback: "Other option")), "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1]")
                
                }, "#9500.[1].[4].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
            }, "#9500.[1].[4].property.[0].[0].arg[0].value.[0]")
        }, "#9500.[1].[4].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ChimeSelection = CoreDataToDo.ChimeSelection
typealias ChimeSelection_Previews = CoreDataToDo.ChimeSelection_Previews