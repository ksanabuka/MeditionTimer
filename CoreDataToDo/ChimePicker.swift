//
//  ChimePicker.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 6/3/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//

import Foundation
import Combine
import SwiftUI


struct ChimePicker1<Content: View>: View {
    @Binding var selectedChimeIndex: Int
   @Binding var repeatChimeIndex: Int

    var label: () -> Content
    var data: [Any] = ["None", "Bells", "Bowl", "Clap", "Cymbal", "Wooden", "Bells 2"]

    var selectedLabel: String {
        selectedChimeIndex >= 0 ? "\(data[selectedChimeIndex])" : ""
    }

    var body: some View {
      NavigationLink(destination: ListPickerContent(repeatChimesIndex: self.$repeatChimeIndex, selectedChimeIndex: self.$selectedChimeIndex, data: self.data)) {
            ListPickerLabel(label: self.label, value: "\(self.selectedLabel)")
        }
    }
}


private struct ListPickerLabel<Content: View>: View {
    let label: () -> Content
    let value: String

    var body: some View {
        HStack(alignment: .center) {
            self.label()
            Spacer()
            Text(value)
                .padding(.leading, 8)
        }
    }
}

private struct ListPickerContentItem: View {
    let label: String
    let index: Int
    let isSelected: Bool
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            if isSelected {
                Image(systemName: "checkmark")
                    .foregroundColor(.accentColor)
            }
        }.background(Color.white) // so the entire row is selectable
    }
}

private struct ListPickerContent: View {
    @Environment(\.presentationMode) var presentationMode
    let numbers = ["One time","Two times","Three times"]
   @Binding var repeatChimesIndex:Int
   @Binding var selectedChimeIndex: Int

    var data: [Any]
    var body: some View {
        List {
         VStack {
             // 2
             Picker("Numbers", selection: $repeatChimesIndex) {
                 ForEach(0 ..< numbers.count) { index in
                     Text(self.numbers[index]).tag(index)
                 }
             }
             .pickerStyle(SegmentedPickerStyle())

         }

         
         
            ForEach(0..<data.count) { index in
                ListPickerContentItem(label: "\(self.data[index])", index: index, isSelected: index == self.selectedChimeIndex).onTapGesture {
                    self.selectedChimeIndex = index
//                    self.presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}



struct ChimePicker: View {
   @Binding var chime: Int
   @Binding var repeatChime: Int
   let repeat_options = ["1 time", "2 times", "3 times"]
   let chimes = ["None", "Bells", "Bowl", "Clap", "Cymbal", "Wooden", "Bells 2"]
   var textLabel: String
   
   var body: some View {
            
Picker (selection: self.$chime, label: Text("\(textLabel)")) {
//                            1 picker
VStack {
Picker("Numbers", selection:
self.$repeatChime
) {
 ForEach(0 ..< repeat_options.count) { index in
   Text(self.repeat_options[index]).tag(index)
 }
}

.pickerStyle(SegmentedPickerStyle())


Text("Selected value is: \(repeat_options[self.repeatChime])").padding()
}
//                            2picker
ForEach(0 ..< chimes.count){
Text(self.chimes[$0]).tag($0)
}
}
   }
}
