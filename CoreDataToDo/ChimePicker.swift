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
