//
//  EditMeditation.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 12/10/19.
//  Copyright © 2019 Oksana Buksha. All rights reserved.
//

import SwiftUI
import AVKit
import Foundation
import AVFoundation
import Combine


class UserMedSets: ObservableObject {

@Published var med_name: String = "My Meditation Name"

@Published var total_med_time: Int = 12

   
   
@Published var prep_time: Int = 2
@Published var med_time: Int = 10
@Published var interval_time: Int = 3
@Published var rest_time: Int = 1

   
@Published var prep_chime: Int = 0
@Published var repeat_prep_chime: Int = 1

@Published var start_med_chime: Int = 0
@Published var repeat_start_med_chime: Int = 1
   
@Published var interval_chime: Int = 0
@Published var repeat_interval_chime: Int = 1

@Published var end_med_chime: Int = 0
@Published var repeat_end_med_chime: Int = 1

@Published var end_rest_chime: Int = 0
@Published var repeat_end_rest_chime: Int = 1

   
   
   @ObservedObject var durationPrepTime = SelectedDuration()
   
   @ObservedObject var durationMedTime = SelectedDuration()
   @ObservedObject var durationIntervalTime = SelectedDuration()
   @ObservedObject var durationRestTime = SelectedDuration()

}


class udUserMeditationSettings: ObservableObject {

   var prep_time: Int = UserDefaults.standard.integer(forKey: "k_prep_time")  {
       didSet { UserDefaults.standard.set(self.prep_time, forKey: "k_prep_time") }
   }

   
   var med_time: Int = UserDefaults.standard.integer(forKey: "k_med_time")  {
       didSet { UserDefaults.standard.set(self.med_time, forKey: "k_med_time") }
   }
   var interval_time: Int = UserDefaults.standard.integer(forKey: "k_interval_time")  {
       didSet { UserDefaults.standard.set(self.interval_time, forKey: "k_interval_time") }
   }
   var rest_time: Int = UserDefaults.standard.integer(forKey: "k_rest_time")  {
       didSet { UserDefaults.standard.set(self.rest_time, forKey: "k_rest_time") }
   }

   
var med_name: String = UserDefaults.standard.string(forKey: "k_med_name") ?? "My Meditation Name"  {
    didSet { UserDefaults.standard.set(self.med_name, forKey: "k_med_name") }
}
    
    
var prep_chime: Int = UserDefaults.standard.integer(forKey: "k_prep_chime") {
    didSet { UserDefaults.standard.set(self.prep_chime, forKey: "k_prep_chime") }
   
}
   
   
   var repeat_prep_chime: Int = UserDefaults.standard.integer(forKey: "k_repeat_prep_chime")  {
       didSet { UserDefaults.standard.set(self.repeat_prep_chime, forKey: "k_repeat_prep_chime") }
   }


var start_med_chime: Int = UserDefaults.standard.integer(forKey: "k_start_med_chime") {
    didSet { UserDefaults.standard.set(self.start_med_chime, forKey: "k_start_med_chime") }
}

var repeat_start_med_chime: Int = UserDefaults.standard.integer(forKey: "k_repeat_start_med_chime")  {
    didSet { UserDefaults.standard.set(self.repeat_start_med_chime, forKey: "k_repeat_start_med_chime") }
}

    var interval_chime: Int = UserDefaults.standard.integer(forKey: "k_interval_chime") {
        didSet { UserDefaults.standard.set(self.interval_chime, forKey: "k_interval_chime") }
    }

    var repeat_interval_chime: Int = UserDefaults.standard.integer(forKey: "k_repeat_interval_chime")  {
        didSet { UserDefaults.standard.set(self.repeat_interval_chime, forKey: "k_repeat_interval_chime") }
    }

   var end_med_chime: Int = UserDefaults.standard.integer(forKey: "k_end_med_chime") {
          didSet { UserDefaults.standard.set(self.end_med_chime, forKey: "k_end_med_chime") }
      }

      var repeat_end_med_chime: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_med_chime")  {
          didSet { UserDefaults.standard.set(self.repeat_end_med_chime, forKey: "k_repeat_end_med_chime") }
      }

   var end_rest_chime: Int = UserDefaults.standard.integer(forKey: "k_end_rest_chime") {
       didSet { UserDefaults.standard.set(self.end_rest_chime, forKey: "k_end_rest_chime") }
   }

   var repeat_end_rest_chime: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_rest_chime")  {
       didSet { UserDefaults.standard.set(self.repeat_end_rest_chime, forKey: "k_repeat_rest_chime") }
   }
}


struct EditMeditation: View {

    @EnvironmentObject var userMedSets: UserMedSets

    @ObservedObject var udUserMedSets = udUserMeditationSettings()

    
    @State private var showingTimer = true

    
    
    @State var showingDetail = false

    //@Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    
    
    var body: some View {
        Group {
                Form {
                    Section {

                        TextField("Enter Meditation name", text: self.$userMedSets.med_name)            .padding().multilineTextAlignment(.trailing)
                                                
                     
                     
                    Group {
                     NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets.durationPrepTime.selectedHour, selectedMin: self.$userMedSets.durationPrepTime.selectedMin, selectedSecond: self.$userMedSets.durationPrepTime.selectedSecond)){
                                       HStack {
                                           Text("Preparation Time")
                                           Spacer()
                                          (userMedSets.durationPrepTime.selectedHour < 9 ? Text("0\(userMedSets.durationPrepTime.selectedHour):"): Text("\(userMedSets.durationPrepTime.selectedHour):")) + (userMedSets.durationPrepTime.selectedMin < 9 ? Text("0\(userMedSets.durationPrepTime.selectedMin):"): Text("\(userMedSets.durationPrepTime.selectedMin):"))
                                             + (userMedSets.durationPrepTime.selectedSecond < 9 ? Text("0\(userMedSets.durationPrepTime.selectedSecond)"): Text("\(userMedSets.durationPrepTime.selectedSecond)"))
                                          
                                          
                                       }
                                   }
                        
                     ChimePicker(chime: self.$userMedSets.prep_chime, repeatChime: self.$userMedSets.repeat_prep_chime, textLabel: "Preparation Chime")

                     Group {
                      NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets.durationMedTime.selectedHour, selectedMin: self.$userMedSets.durationMedTime.selectedMin, selectedSecond: self.$userMedSets.durationMedTime.selectedSecond)){
                                                            HStack {
                                                                Text("Meditation Time")
                                                                Spacer()
                                                               (userMedSets.durationMedTime.selectedHour < 9 ? Text("0\(userMedSets.durationMedTime.selectedHour):"): Text("\(userMedSets.durationMedTime.selectedHour):")) + (userMedSets.durationMedTime.selectedMin < 9 ? Text("0\(userMedSets.durationMedTime.selectedMin):"): Text("\(userMedSets.durationMedTime.selectedMin):"))
                                                                  + (userMedSets.durationMedTime.selectedSecond < 9 ? Text("0\(userMedSets.durationMedTime.selectedSecond)"): Text("\(userMedSets.durationMedTime.selectedSecond)"))
                                                            }
                                                        }
                     ChimePicker(chime: self.$userMedSets.start_med_chime, repeatChime: self.$userMedSets.repeat_start_med_chime, textLabel: "Start Chime")

                     }
                     
                      NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets.durationIntervalTime.selectedHour, selectedMin: self.$userMedSets.durationIntervalTime.selectedMin, selectedSecond: self.$userMedSets.durationIntervalTime.selectedSecond)){
                                                            HStack {
                                                                Text("Interval Time")
                                                                Spacer()
                                                               (userMedSets.durationIntervalTime.selectedHour < 9 ? Text("0\(userMedSets.durationIntervalTime.selectedHour):"): Text("\(userMedSets.durationIntervalTime.selectedHour):")) + (userMedSets.durationIntervalTime.selectedMin < 9 ? Text("0\(userMedSets.durationIntervalTime.selectedMin):"): Text("\(userMedSets.durationIntervalTime.selectedMin):"))
                                                                  + (userMedSets.durationIntervalTime.selectedSecond < 9 ? Text("0\(userMedSets.durationIntervalTime.selectedSecond)"): Text("\(userMedSets.durationIntervalTime.selectedSecond)"))
                                                               
                                                               
                     //                                          Text(durationToText(duration: self.duration))
                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                            }
                                                        }
                     ChimePicker(chime: self.$userMedSets.interval_chime, repeatChime: self.$userMedSets.repeat_interval_chime, textLabel: "Interval Chime")

                     ChimePicker(chime: self.$userMedSets.end_med_chime, repeatChime: self.$userMedSets.repeat_end_med_chime, textLabel: "End Alert")

                     
                      NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets.durationRestTime.selectedHour, selectedMin: self.$userMedSets.durationRestTime.selectedMin, selectedSecond: self.$userMedSets.durationRestTime.selectedSecond)){
                                                            HStack {
                                                                Text("Rest Time")
                                                                Spacer()
                                                               (userMedSets.durationRestTime.selectedHour < 9 ? Text("0\(userMedSets.durationRestTime.selectedHour):"): Text("\(userMedSets.durationRestTime.selectedHour):")) + (userMedSets.durationRestTime.selectedMin < 9 ? Text("0\(userMedSets.durationRestTime.selectedMin):"): Text("\(userMedSets.durationRestTime.selectedMin):"))
                                                                  + (userMedSets.durationRestTime.selectedSecond < 9 ? Text("0\(userMedSets.durationRestTime.selectedSecond)"): Text("\(userMedSets.durationRestTime.selectedSecond)"))
                                                               
                                                               
                     //                                          Text(durationToText(duration: self.duration))
                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                            }
                                                        }

                     
                     
                     ChimePicker(chime: self.$userMedSets.end_rest_chime, repeatChime: self.$userMedSets.repeat_end_rest_chime, textLabel: "Rest Chime")
                                   }
                    }
                }
               
        }
        .onDisappear{
         self.userMedSets.prep_time = self.userMedSets.durationPrepTime.toSeconds()
         self.userMedSets.med_time = self.userMedSets.durationMedTime.toSeconds()
         self.userMedSets.interval_time = self.userMedSets.durationIntervalTime.toSeconds()
         self.userMedSets.rest_time = self.userMedSets.durationRestTime.toSeconds()


         self.userMedSets.total_med_time = self.userMedSets.prep_time + self.userMedSets.med_time + self.userMedSets.rest_time
         
         
            if (self.userMedSets.med_name != self.udUserMedSets.med_name)
               { UserDefaults.standard.set((self.userMedSets.med_name) , forKey: "k_med_name")
                  print("OD:med_name & ud_med_name: \(self.userMedSets.med_name) \t \(self.udUserMedSets.med_name)")

               }
         if self.userMedSets.prep_chime != self.udUserMedSets.prep_chime
         { UserDefaults.standard.set((self.userMedSets.prep_chime) , forKey: "k_prep_chime")
               print("prep_chime_in & ud_prep_chime: \(self.userMedSets.prep_chime) \t \(self.udUserMedSets.prep_chime)")}
        
         if (self.userMedSets.repeat_prep_chime != self.udUserMedSets.repeat_prep_chime)
            { UserDefaults.standard.set((self.userMedSets.repeat_prep_chime) , forKey: "k_repeat_prep_chime")
               print("OD:repeat_prep_chime & ud_repeat_prep_chime: \(self.userMedSets.repeat_prep_chime) \t \(self.udUserMedSets.repeat_prep_chime)")
            }
         
         //__
  
         if self.userMedSets.start_med_chime != self.udUserMedSets.start_med_chime
            { UserDefaults.standard.set((self.userMedSets.start_med_chime) , forKey: "k_start_med_chime")
                  print("start_med_chime & ud_start_med_chime \(self.userMedSets.start_med_chime) \t \(self.udUserMedSets.start_med_chime)")}
           
            if (self.userMedSets.repeat_start_med_chime != self.udUserMedSets.repeat_start_med_chime)
               { UserDefaults.standard.set((self.userMedSets.repeat_start_med_chime) , forKey: "k_repeat_start_med_chime")
                  print("OD:repeat_start_med_chime & ud_repeat_start_med_chime: \(self.userMedSets.repeat_start_med_chime) \t \(self.udUserMedSets.repeat_start_med_chime)")
               }
         
         //--
         
         //__
         
                if self.userMedSets.interval_chime != self.udUserMedSets.interval_chime
                   { UserDefaults.standard.set((self.userMedSets.interval_chime) , forKey: "k_interval_chime")
                         print("interval_chime & ud_interval_chime: \(self.userMedSets.interval_chime) \t \(self.udUserMedSets.interval_chime)")}
                  
                   if (self.userMedSets.repeat_interval_chime != self.udUserMedSets.repeat_interval_chime)
                      { UserDefaults.standard.set((self.userMedSets.repeat_interval_chime) , forKey: "k_repeat_interval_chime")
                         print("OD:repeat_interval_chime & ud_repeat_interval_chime: \(self.userMedSets.repeat_interval_chime) \t \(self.udUserMedSets.repeat_interval_chime)")
                      }
                
                //--
         
         
         //__
         
                if self.userMedSets.end_med_chime != self.udUserMedSets.end_med_chime
                   { UserDefaults.standard.set((self.userMedSets.end_med_chime) , forKey: "k_end_med_chime")
                         print("end_med_chime & ud_end_med_chime: \(self.userMedSets.end_med_chime) \t \(self.udUserMedSets.end_med_chime)")}
                  
                   if (self.userMedSets.repeat_end_med_chime != self.udUserMedSets.repeat_end_med_chime)
                      { UserDefaults.standard.set((self.userMedSets.repeat_end_med_chime) , forKey: "k_repeat_end_med_chime")
                         print("OD:repeat_end_med_chime & ud_repeat_end_med_chime: \(self.userMedSets.repeat_end_med_chime) \t \(self.udUserMedSets.repeat_end_med_chime)")
                      }
                
                //--
         //__
         
                if self.userMedSets.end_rest_chime != self.udUserMedSets.end_rest_chime
                   { UserDefaults.standard.set((self.userMedSets.end_rest_chime) , forKey: "k_end_rest_chime")
                         print("end_rest_chime & ud_end_rest_chime: \(self.userMedSets.end_rest_chime) \t \(self.udUserMedSets.end_rest_chime)")}
                  
                   if (self.userMedSets.repeat_end_rest_chime != self.udUserMedSets.repeat_end_rest_chime)
                      { UserDefaults.standard.set((self.userMedSets.repeat_end_rest_chime) , forKey: "k_repeat_end_rest_chime")
                         print("OD:repeat_end_rest_chime & ud_repeat_end_rest_chime: \(self.userMedSets.repeat_end_rest_chime) \t \(self.udUserMedSets.repeat_end_rest_chime)")
                      }
                
                //--
         
         
         if (self.userMedSets.durationPrepTime.toSeconds() != self.udUserMedSets.prep_time)
            { UserDefaults.standard.set(self.userMedSets.durationPrepTime.toSeconds() , forKey: "k_prep_time")
               print("OD:prep_time & ud_prep_time: \(self.userMedSets.durationPrepTime.toSeconds() ) \t \(self.udUserMedSets.prep_time)")

         }
         if (self.userMedSets.durationMedTime.toSeconds() != self.udUserMedSets.med_time)
            { UserDefaults.standard.set(self.userMedSets.durationMedTime.toSeconds() , forKey: "k_med_time")
               print("OD:med_time & ud_med_time: \(self.userMedSets.durationMedTime.toSeconds() ) \t \(self.udUserMedSets.med_time)")

         }
         if (self.userMedSets.durationIntervalTime.toSeconds() != self.udUserMedSets.interval_time)
            { UserDefaults.standard.set(self.userMedSets.durationIntervalTime.toSeconds() , forKey: "k_interval_time")
               print("OD:interval_time & ud_interval_time: \(self.userMedSets.durationIntervalTime.toSeconds() ) \t \(self.udUserMedSets.interval_time)")

         }
         if (self.userMedSets.durationRestTime.toSeconds() != self.udUserMedSets.rest_time)
            { UserDefaults.standard.set(self.userMedSets.durationRestTime.toSeconds() , forKey: "k_rest_time")
               print("OD:rest_time & ud_rest_time: \(self.userMedSets.durationRestTime.toSeconds() ) \t \(self.udUserMedSets.rest_time)")

         }
         

                                                           }

    }
}

struct EditMeditation_Previews: PreviewProvider {
    static var previews: some View {
        EditMeditation()
    }
}
