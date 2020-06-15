@_private(sourceFile: "EditMeditation.swift") import CoreDataToDo
import AVFoundation
import Foundation
import Combine
import SwiftUI
import SwiftUI
import AVKit

extension EditMeditation_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/EditMeditation.swift", line: 198)
        AnyView(__designTimeSelection(EditMeditation(), "#10894.[8].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension EditMeditation {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/oksanka/Documents/Projects/CoreDataToDo/CoreDataToDo/EditMeditation.swift", line: 116)
        AnyView(__designTimeSelection(Group {
                __designTimeSelection(Form {
                    __designTimeSelection(Section {

                        __designTimeSelection(TextField(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Enter Meditation name"), text: __designTimeSelection(self.$udUMeditationSettings.med_name, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value"))            .padding().multilineTextAlignment(.trailing), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
                        
                        
                        
                        __designTimeSelection(Picker (selection: __designTimeSelection($chimeIndex, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value"), label: __designTimeSelection(Text(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value.[0].value", fallback: "Preparation Chime")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value")) {
//                            1 picker
                            __designTimeSelection(VStack {
                                                                  __designTimeSelection(Picker(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Numbers"), selection: __designTimeSelection($selectorIndex, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].arg[1].value")) {
                                                                      __designTimeSelection(ForEach(0 ..< repeat_options.count) { index in
                                                                        __designTimeSelection(Text(__designTimeSelection(self.repeat_options[__designTimeSelection(index, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value.[0].value")], "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value")).tag(__designTimeSelection(index, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0]")
                                                                      }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].arg[2].value.[0]")
                                                                  }
                                                                  .pickerStyle(__designTimeSelection(SegmentedPickerStyle(), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0].modifier[0].arg[0].value")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[0]")

//                                                                    UserDefaults.standard.set((selectorIndex), for key: "k_repeat_med_chime")
//                                                                    self.selectorIndex += 1
//
//                                                                    print(self.selectorIndex)
//

//                                                                $selectorIndex += 1
                                                                __designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[1].arg[0].value.[0].value", fallback: "Selected value is: "))\(__designTimeSelection(repeat_options[__designTimeSelection(selectorIndex, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[1].arg[0].value.[1].value.arg[0].value.[0].value")], "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[1].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[1].arg[0].value.[2].value", fallback: ""))").padding(), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[1]")
                                                          }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0]")
//                            2picker
                            __designTimeSelection(ForEach(0 ..< chimes.count){
                                __designTimeSelection(Text(__designTimeSelection(self.chimes[__designTimeSelection($0, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[0].value.[0].value")], "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].arg[0].value")).tag(__designTimeSelection($0, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0].modifier[0].arg[0].value")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[1].arg[1].value.[0]")
                            }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[1]")
                        }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1]")
                        
                        
                    __designTimeSelection(Text(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].value", fallback: "Other option")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2]")
                    __designTimeSelection(Group {
                               __designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "ChimeIndex: "))\(__designTimeSelection(chimeIndex, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value.[2].value", fallback: ""))"), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0]")
                            __designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].value", fallback: "SelectorIndex: "))\(__designTimeSelection(selectorIndex, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[2].value", fallback: ""))"), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1]")
                        
__designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].value", fallback: "Hello,"))\(__designTimeSelection(self.$udUMeditationSettings.med_name.wrappedValue, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[2].value", fallback: "!"))"), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2]")
                                   
                                   
                                   __designTimeSelection(NavigationLink(destination: __designTimeSelection(TimePicker(selectedHour: __designTimeSelection(self.$duration.selectedHour, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.arg[0].value"), selectedMin: __designTimeSelection(self.$duration.selectedMin, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.arg[1].value"), selectedSecond: __designTimeSelection(self.$duration.selectedSecond, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.arg[2].value")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value")){
                                       __designTimeSelection(HStack {
                                           __designTimeSelection(Text(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Meditation Time")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[0]")
                                           __designTimeSelection(Spacer(), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[1]")
                                           __designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0].value", fallback: "00:00:"))\(__designTimeSelection(self.$udUMeditationSettings.med_time.wrappedValue, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[2].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[2].arg[0].value.[2].value", fallback: " "))"), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0].arg[0].value.[2]")
                                       }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[1].value.[0]")
                                   }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3]")
                                   
                                   __designTimeSelection(NavigationLink(destination: __designTimeSelection(TimePicker(selectedHour: __designTimeSelection(self.$duration.selectedHour, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[0].value.arg[0].value"), selectedMin: __designTimeSelection(self.$duration.selectedMin, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[0].value.arg[1].value"), selectedSecond: __designTimeSelection(self.$duration.selectedSecond, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[0].value.arg[2].value")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[0].value")){
                                       __designTimeSelection(HStack {
                                           __designTimeSelection(Text(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Start Chime")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0].arg[0].value.[0]")
                                           __designTimeSelection(Spacer(), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0].arg[0].value.[1]")
                                           __designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(self.$udUMeditationSettings.start_chime.wrappedValue, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0].arg[0].value.[2].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0].arg[0].value.[2].arg[0].value.[2].value", fallback: " "))"), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0].arg[0].value.[2]")
                                       }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4].arg[1].value.[0]")
                                   }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[4]")
                                   
                                   __designTimeSelection(NavigationLink(destination: __designTimeSelection(TimePicker(selectedHour: __designTimeSelection(self.$duration.selectedHour, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[0].value.arg[0].value"), selectedMin: __designTimeSelection(self.$duration.selectedMin, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[0].value.arg[1].value"), selectedSecond: __designTimeSelection(self.$duration.selectedSecond, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[0].value.arg[2].value")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[0].value")){
                                       __designTimeSelection(HStack {
                                           __designTimeSelection(Text(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Preparation Chime")), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0].arg[0].value.[0]")
                                           __designTimeSelection(Spacer(), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0].arg[0].value.[1]")
                                           __designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0].arg[0].value.[2].arg[0].value.[0].value", fallback: ""))\(__designTimeSelection(self.$udUMeditationSettings.prep_chime.wrappedValue, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0].arg[0].value.[2].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0].arg[0].value.[2].arg[0].value.[2].value", fallback: " "))"), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0].arg[0].value.[2]")
                                       }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5].arg[1].value.[0]")
                                   }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[5]")
                        __designTimeSelection(Text("\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[6].arg[0].value.[0].value", fallback: "hour:min:sec: "))\(__designTimeSelection(self.duration.selectedHour, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[6].arg[0].value.[1].value.arg[0].value"))\(__designTimeString("#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[6].arg[0].value.[2].value", fallback: ""))"), "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[6]")
                                   }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3]")
                    }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                }, "#10894.[7].[13].property.[0].[0].arg[0].value.[0]")
               //

                
                //                \(UserDefaults.standard.string(forKey: "k_med_name") ?? "mydefault")")
                                
//            }
        }, "#10894.[7].[13].property.[0].[0]"))
#sourceLocation()
    }
}

typealias UserMedSets = CoreDataToDo.UserMedSets
typealias udUserMeditationSettings = CoreDataToDo.udUserMeditationSettings
typealias EditMeditation = CoreDataToDo.EditMeditation
typealias EditMeditation_Previews = CoreDataToDo.EditMeditation_Previews