//
//  TimePicker.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 12/10/19.
//  Copyright © 2019 Oksana Buksha. All rights reserved.
//
import Combine
import SwiftUI


class SelectedDuration: ObservableObject {
    @Published var selectedHour = 1
    @Published var selectedMin = 20
    @Published var selectedSecond = 40
    
   static func from(seconds: Int) -> SelectedDuration {
      let duration = SelectedDuration()
      duration.selectedHour = seconds / 3600
      duration.selectedSecond = seconds % 60
      duration.selectedMin = seconds / 60 % 60

      return duration
   }

   func toSeconds() -> Int {
      return self.selectedSecond + self.selectedMin * 60 + self.selectedHour * 3600
   }
   //      let d = SelectedDuration.from(seconds: 80_000)
   //      print(d.selectedHour, ":", d.selectedMin, ":", d.selectedSecond)
   //      let s = d.toSeconds()
   //      print(s)

   
}

func durationToText(duration: SelectedDuration) -> some View {
   return (duration.selectedHour < 9 ? Text("0\(duration.selectedHour)"): Text("\(duration.selectedHour)")) + (duration.selectedMin < 9 ? Text("0\(duration.selectedMin)"): Text("\(duration.selectedMin)"))
   + (duration.selectedSecond < 9 ? Text("0\(duration.selectedSecond)"): Text("\(duration.selectedSecond)"))
   
}


 



struct TimePicker: View {

    @Binding  var selectedHour: Int
    @Binding  var selectedMin: Int
    @Binding  var selectedSecond: Int


    var body: some View {

        VStack {
            HStack {

                VStack {
                    Picker(selection: self.$selectedHour, label: Text("Hour")) {
                        ForEach(0..<24) { hour in
                            Text("\(hour) Hour")
                        }
                    }
                }
                .frame(minWidth: 100, maxWidth: .infinity)
                .clipped()
                //.border(Color.blue)

                VStack {
                    Picker(selection: self.$selectedMin, label: Text("Min")) {
                        ForEach(0..<61) { min in
                            Text("\(min) Min")
                        }
                    }
                }
                .frame(minWidth: 100, maxWidth: .infinity)
                .clipped()
              //  .border(Color.yellow)

                VStack {
                    Picker(selection: self.$selectedSecond, label: Text("Sed")) {
                        ForEach(0..<61) { sec in
                            Text("\(sec) Sec")
                        }
                    }
                }

                .frame(minWidth: 100, maxWidth: .infinity)
                .clipped()
               // .border(Color.purple)
            }
            
        }
    }

}

struct TimePicker_Previews: PreviewProvider {
    static var previews: some View {
        TimePicker(selectedHour: .constant(4), selectedMin: .constant(5), selectedSecond:  .constant(6))
    }
}
