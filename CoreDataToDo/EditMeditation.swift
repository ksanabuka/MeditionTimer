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





struct EditMeditation: View {
   
   @EnvironmentObject var userMedSets2: DataRep


//    @EnvironmentObject var userMedSets: UserMedSets
   
   
   @EnvironmentObject var userMedSets1: UserMedSets


    @ObservedObject var udUserMedSets = udUserMeditationSettings()

    
    @State private var showingTimer = true

    
    
    @State var showingDetail = false

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    
    
    var body: some View {
        Group {
                Form {
                    Section {

                        TextField("Enter Meditation name", text: self.$userMedSets2.sessionList[0].med_name)            .padding().multilineTextAlignment(.trailing)
                                                
                     
                     
                    Group {
                     NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets2.durationPrepTime1.selectedHour, selectedMin: self.$userMedSets2.durationPrepTime1.selectedMin, selectedSecond: self.$userMedSets2.durationPrepTime1.selectedSecond)){
                                       HStack {
                                           Text("Preparation Time")
                                           Spacer()
                                    ((userMedSets2.durationPrepTime1.selectedHour < 9 ? Text("0\(userMedSets2.durationPrepTime1.selectedHour):"): Text("\(userMedSets2.durationPrepTime1.selectedHour):")) + (userMedSets2.durationPrepTime1.selectedMin < 9 ? Text("0\(userMedSets2.durationPrepTime1.selectedMin):"): Text("\(userMedSets2.durationPrepTime1.selectedMin):"))
                                          + (userMedSets2.durationPrepTime1.selectedSecond < 9 ? Text("0\(userMedSets2.durationPrepTime1.selectedSecond)"): Text("\(userMedSets2.durationPrepTime1.selectedSecond)")))
                                          
                                       }
                                   }
                        
                     ChimePicker(chime: self.$userMedSets2.sessionList[0].prep_chime, repeatChime: self.$userMedSets2.sessionList[0].repeat_prep_chime, textLabel: { Text("Preparation Chime")})

                     Group {
                      NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets2.durationMedTime1.selectedHour, selectedMin: self.$userMedSets2.durationMedTime1.selectedMin, selectedSecond: self.$userMedSets2.durationMedTime1.selectedSecond)){
                                                            HStack {
                                                                Text("Meditation Time")
                                                                Spacer()
                                                               (userMedSets2.durationMedTime1.selectedHour < 9 ? Text("0\(userMedSets2.durationMedTime1.selectedHour):"): Text("\(userMedSets2.durationMedTime1.selectedHour):")) + (userMedSets2.durationMedTime1.selectedMin < 9 ? Text("0\(userMedSets2.durationMedTime1.selectedMin):"): Text("\(userMedSets2.durationMedTime1.selectedMin):"))
                                                                  + (userMedSets2.durationMedTime1.selectedSecond < 9 ? Text("0\(userMedSets2.durationMedTime1.selectedSecond)"): Text("\(userMedSets2.durationMedTime1.selectedSecond)"))
                                                            }
                                                        }
                        ChimePicker(chime: self.$userMedSets2.sessionList[0].start_med_chime, repeatChime: self.$userMedSets2.sessionList[0].repeat_start_med_chime, textLabel:{ Text("Start Chime")})

                     }
                     
                      NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets2.durationIntervalTime1.selectedHour, selectedMin: self.$userMedSets2.durationIntervalTime1.selectedMin, selectedSecond: self.$userMedSets2.durationIntervalTime1.selectedSecond)){
                                                            HStack {
                                                                Text("Interval Time")
                                                                Spacer()
                                                               (userMedSets2.durationIntervalTime1.selectedHour < 9 ? Text("0\(userMedSets2.durationIntervalTime1.selectedHour):"): Text("\(userMedSets2.durationIntervalTime1.selectedHour):")) + (userMedSets2.durationIntervalTime1.selectedMin < 9 ? Text("0\(userMedSets2.durationIntervalTime1.selectedMin):"): Text("\(userMedSets2.durationIntervalTime1.selectedMin):"))
                                                                  + (userMedSets2.durationIntervalTime1.selectedSecond < 9 ? Text("0\(userMedSets2.durationIntervalTime1.selectedSecond)"): Text("\(userMedSets2.durationIntervalTime1.selectedSecond)"))
                                                               
                                                               
                     //                                          Text(durationToText(duration: self.duration))
                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                            }
                                                        }
                     ChimePicker(chime: self.$userMedSets2.sessionList[0].interval_chime, repeatChime: self.$userMedSets2.sessionList[0].repeat_interval_chime, textLabel: { Text("Interval Chime")})

                     ChimePicker(chime: self.$userMedSets2.sessionList[0].end_med_chime, repeatChime: self.$userMedSets2.sessionList[0].repeat_end_med_chime, textLabel: { Text("End Alert")})

                     
                      NavigationLink(destination: TimePicker(selectedHour: self.$userMedSets2.durationRestTime1.selectedHour, selectedMin: self.$userMedSets2.durationRestTime1.selectedMin, selectedSecond: self.$userMedSets2.durationRestTime1.selectedSecond)){
                                                            HStack {
                                                                Text("Rest Time")
                                                                Spacer()
                                                               (userMedSets2.durationRestTime1.selectedHour < 9 ? Text("0\(userMedSets2.durationRestTime1.selectedHour):"): Text("\(userMedSets2.durationRestTime1.selectedHour):")) + (userMedSets2.durationRestTime1.selectedMin < 9 ? Text("0\(userMedSets2.durationRestTime1.selectedMin):"): Text("\(userMedSets2.durationRestTime1.selectedMin):"))
                                                                  + (userMedSets2.durationRestTime1.selectedSecond < 9 ? Text("0\(userMedSets2.durationRestTime1.selectedSecond)"): Text("\(userMedSets2.durationRestTime1.selectedSecond)"))
                                                               
                                                               
                     //                                          Text(durationToText(duration: self.duration))
                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                            }
                                                        }

                     
                     
                     ChimePicker(chime: self.$userMedSets2.sessionList[0].end_rest_chime, repeatChime: self.$userMedSets2.sessionList[0].repeat_end_rest_chime, textLabel: { Text("Rest Chime")})
                                   }
                    }
                }
               
        }
        .onDisappear{
         self.userMedSets2.sessionList[0].prep_time = self.userMedSets2.durationPrepTime1.toSeconds()
         self.userMedSets2.sessionList[0].med_time = self.userMedSets2.durationMedTime1.toSeconds()
         self.userMedSets2.sessionList[0].interval_time = self.userMedSets2.durationIntervalTime1.toSeconds()
         self.userMedSets2.sessionList[0].rest_time = self.userMedSets2.durationRestTime1.toSeconds()


         self.userMedSets2.sessionList[0].total_med_time = self.userMedSets2.sessionList[0].prep_time + self.userMedSets2.sessionList[0].med_time + self.userMedSets2.sessionList[0].rest_time
         
         
            if (self.userMedSets2.sessionList[0].med_name != self.udUserMedSets.med_name)
               { UserDefaults.standard.set((self.userMedSets2.sessionList[0].med_name) , forKey: "k_med_name")
                  print("OD:med_name & ud_med_name: \(self.userMedSets2.sessionList[0].med_name) \t \(self.udUserMedSets.med_name)")

               }
         if self.userMedSets2.sessionList[0].prep_chime != self.udUserMedSets.prep_chime
         { UserDefaults.standard.set((self.userMedSets2.sessionList[0].prep_chime) , forKey: "k_prep_chime")
               print("prep_chime_in & ud_prep_chime: \(self.userMedSets2.sessionList[0].prep_chime) \t \(self.udUserMedSets.prep_chime)")}
        
         if (self.userMedSets2.sessionList[0].repeat_prep_chime != self.udUserMedSets.repeat_prep_chime)
            { UserDefaults.standard.set((self.userMedSets2.sessionList[0].repeat_prep_chime) , forKey: "k_repeat_prep_chime")
               print("OD:repeat_prep_chime & ud_repeat_prep_chime: \(self.userMedSets2.sessionList[0].repeat_prep_chime) \t \(self.udUserMedSets.repeat_prep_chime)")
            }
         
         //__
  
         if self.userMedSets2.sessionList[0].start_med_chime != self.udUserMedSets.start_med_chime
            { UserDefaults.standard.set((self.userMedSets2.sessionList[0].start_med_chime) , forKey: "k_start_med_chime")
                  print("start_med_chime & ud_start_med_chime \(self.userMedSets2.sessionList[0].start_med_chime) \t \(self.udUserMedSets.start_med_chime)")}
           
            if (self.userMedSets2.sessionList[0].repeat_start_med_chime != self.udUserMedSets.repeat_start_med_chime)
               { UserDefaults.standard.set((self.userMedSets2.sessionList[0].repeat_start_med_chime) , forKey: "k_repeat_start_med_chime")
                  print("OD:repeat_start_med_chime & ud_repeat_start_med_chime: \(self.userMedSets2.sessionList[0].repeat_start_med_chime) \t \(self.udUserMedSets.repeat_start_med_chime)")
               }
         
         //--
         
         //__
         
                if self.userMedSets2.sessionList[0].interval_chime != self.udUserMedSets.interval_chime
                   { UserDefaults.standard.set((self.userMedSets2.sessionList[0].interval_chime) , forKey: "k_interval_chime")
                         print("interval_chime & ud_interval_chime: \(self.userMedSets2.sessionList[0].interval_chime) \t \(self.udUserMedSets.interval_chime)")}
                  
                   if (self.userMedSets2.sessionList[0].repeat_interval_chime != self.udUserMedSets.repeat_interval_chime)
                      { UserDefaults.standard.set((self.userMedSets2.sessionList[0].repeat_interval_chime) , forKey: "k_repeat_interval_chime")
                         print("OD:repeat_interval_chime & ud_repeat_interval_chime: \(self.userMedSets2.sessionList[0].repeat_interval_chime) \t \(self.udUserMedSets.repeat_interval_chime)")
                      }
                
                //--
         
         
         //__
         
                if self.userMedSets2.sessionList[0].end_med_chime != self.udUserMedSets.end_med_chime
                   { UserDefaults.standard.set((self.userMedSets2.sessionList[0].end_med_chime) , forKey: "k_end_med_chime")
                         print("end_med_chime & ud_end_med_chime: \(self.userMedSets2.sessionList[0].end_med_chime) \t \(self.udUserMedSets.end_med_chime)")}
                  
                   if (self.userMedSets2.sessionList[0].repeat_end_med_chime != self.udUserMedSets.repeat_end_med_chime)
                      { UserDefaults.standard.set((self.userMedSets2.sessionList[0].repeat_end_med_chime) , forKey: "k_repeat_end_med_chime")
                         print("OD:repeat_end_med_chime & ud_repeat_end_med_chime: \(self.userMedSets2.sessionList[0].repeat_end_med_chime) \t \(self.udUserMedSets.repeat_end_med_chime)")
                      }
                
                //--
         //__
         
                if self.userMedSets2.sessionList[0].end_rest_chime != self.udUserMedSets.end_rest_chime
                   { UserDefaults.standard.set((self.userMedSets2.sessionList[0].end_rest_chime) , forKey: "k_end_rest_chime")
                         print("end_rest_chime & ud_end_rest_chime: \(self.userMedSets2.sessionList[0].end_rest_chime) \t \(self.udUserMedSets.end_rest_chime)")}
                  
                   if (self.userMedSets2.sessionList[0].repeat_end_rest_chime != self.udUserMedSets.repeat_end_rest_chime)
                      { UserDefaults.standard.set((self.userMedSets2.sessionList[0].repeat_end_rest_chime) , forKey: "k_repeat_end_rest_chime")
                         print("OD:repeat_end_rest_chime & ud_repeat_end_rest_chime: \(self.userMedSets2.sessionList[0].repeat_end_rest_chime) \t \(self.udUserMedSets.repeat_end_rest_chime)")
                      }
                
                //--
         
         
         if (self.userMedSets2.durationPrepTime1.toSeconds() != self.udUserMedSets.prep_time)
            { UserDefaults.standard.set(self.userMedSets2.durationPrepTime1.toSeconds() , forKey: "k_prep_time")
               print("OD:prep_time & ud_prep_time: \(self.userMedSets2.durationPrepTime1.toSeconds() ) \t \(self.udUserMedSets.prep_time)")

         }
         if (self.userMedSets2.durationMedTime1.toSeconds() != self.udUserMedSets.med_time)
            { UserDefaults.standard.set(self.userMedSets2.durationMedTime1.toSeconds() , forKey: "k_med_time")
               print("OD:med_time & ud_med_time: \(self.userMedSets2.durationMedTime1.toSeconds() ) \t \(self.udUserMedSets.med_time)")

         }
         if (self.userMedSets2.durationIntervalTime1.toSeconds() != self.udUserMedSets.interval_time)
            { UserDefaults.standard.set(self.userMedSets2.durationIntervalTime1.toSeconds() , forKey: "k_interval_time")
               print("OD:interval_time & ud_interval_time: \(self.userMedSets2.durationIntervalTime1.toSeconds() ) \t \(self.udUserMedSets.interval_time)")

         }
         if (self.userMedSets2.durationRestTime1.toSeconds() != self.udUserMedSets.rest_time)
            { UserDefaults.standard.set(self.userMedSets2.durationRestTime1.toSeconds() , forKey: "k_rest_time")
               print("OD:rest_time & ud_rest_time: \(self.userMedSets2.durationRestTime1.toSeconds() ) \t \(self.udUserMedSets.rest_time)")

         }
         

                                                           }

    }
}

struct EditMeditation_Previews: PreviewProvider {
    static var previews: some View {
        EditMeditation()
    }
}
