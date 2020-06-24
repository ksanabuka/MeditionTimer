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
   
//   var uiId: Int
   
   @EnvironmentObject var allMeds: DataRep


//    @EnvironmentObject var userMedSets: UserMedSets
   
   
   //@EnvironmentObject var userMedSets1: UserMedSets


    @ObservedObject var udAllMeds = udUserMeditationSettings()

    
    @State private var showingTimer = true

    
    
    @State var showingDetail = false

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    
    
    var body: some View {
        Group {
                Form {
                    Section {

                        TextField("Enter Meditation name", text: self.$allMeds.sessionList[0].med_name)            .padding().multilineTextAlignment(.trailing)
                                                
                     
                     
                    Group {
                     NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationPrepTime1.selectedHour, selectedMin: self.$allMeds.durationPrepTime1.selectedMin, selectedSecond: self.$allMeds.durationPrepTime1.selectedSecond)){
                                       HStack {
                                           Text("Preparation Time")
                                           Spacer()
                                    ((allMeds.durationPrepTime1.selectedHour < 9 ? Text("0\(allMeds.durationPrepTime1.selectedHour):"): Text("\(allMeds.durationPrepTime1.selectedHour):")) + (allMeds.durationPrepTime1.selectedMin < 9 ? Text("0\(allMeds.durationPrepTime1.selectedMin):"): Text("\(allMeds.durationPrepTime1.selectedMin):"))
                                          + (allMeds.durationPrepTime1.selectedSecond < 9 ? Text("0\(allMeds.durationPrepTime1.selectedSecond)"): Text("\(allMeds.durationPrepTime1.selectedSecond)")))
                                          
                                       }
                                   }
                        
                     ChimePicker(chime: self.$allMeds.sessionList[0].prep_chime, repeatChime: self.$allMeds.sessionList[0].repeat_prep_chime, textLabel: { Text("Preparation Chime")})

                     Group {
                      NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationMedTime1.selectedHour, selectedMin: self.$allMeds.durationMedTime1.selectedMin, selectedSecond: self.$allMeds.durationMedTime1.selectedSecond)){
                                                            HStack {
                                                                Text("Meditation Time")
                                                                Spacer()
                                                               (allMeds.durationMedTime1.selectedHour < 9 ? Text("0\(allMeds.durationMedTime1.selectedHour):"): Text("\(allMeds.durationMedTime1.selectedHour):")) + (allMeds.durationMedTime1.selectedMin < 9 ? Text("0\(allMeds.durationMedTime1.selectedMin):"): Text("\(allMeds.durationMedTime1.selectedMin):"))
                                                                  + (allMeds.durationMedTime1.selectedSecond < 9 ? Text("0\(allMeds.durationMedTime1.selectedSecond)"): Text("\(allMeds.durationMedTime1.selectedSecond)"))
                                                            }
                                                        }
                        ChimePicker(chime: self.$allMeds.sessionList[0].start_med_chime, repeatChime: self.$allMeds.sessionList[0].repeat_start_med_chime, textLabel:{ Text("Start Chime")})

                     }
                     
                      NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationIntervalTime1.selectedHour, selectedMin: self.$allMeds.durationIntervalTime1.selectedMin, selectedSecond: self.$allMeds.durationIntervalTime1.selectedSecond)){
                                                            HStack {
                                                                Text("Interval Time")
                                                                Spacer()
                                                               (allMeds.durationIntervalTime1.selectedHour < 9 ? Text("0\(allMeds.durationIntervalTime1.selectedHour):"): Text("\(allMeds.durationIntervalTime1.selectedHour):")) + (allMeds.durationIntervalTime1.selectedMin < 9 ? Text("0\(allMeds.durationIntervalTime1.selectedMin):"): Text("\(allMeds.durationIntervalTime1.selectedMin):"))
                                                                  + (allMeds.durationIntervalTime1.selectedSecond < 9 ? Text("0\(allMeds.durationIntervalTime1.selectedSecond)"): Text("\(allMeds.durationIntervalTime1.selectedSecond)"))
                                                               
                                                               
                     //                                          Text(durationToText(duration: self.duration))
                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                            }
                                                        }
                     ChimePicker(chime: self.$allMeds.sessionList[0].interval_chime, repeatChime: self.$allMeds.sessionList[0].repeat_interval_chime, textLabel: { Text("Interval Chime")})

                     ChimePicker(chime: self.$allMeds.sessionList[0].end_med_chime, repeatChime: self.$allMeds.sessionList[0].repeat_end_med_chime, textLabel: { Text("End Alert")})

                     
                      NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationRestTime1.selectedHour, selectedMin: self.$allMeds.durationRestTime1.selectedMin, selectedSecond: self.$allMeds.durationRestTime1.selectedSecond)){
                                                            HStack {
                                                                Text("Rest Time")
                                                                Spacer()
                                                               (allMeds.durationRestTime1.selectedHour < 9 ? Text("0\(allMeds.durationRestTime1.selectedHour):"): Text("\(allMeds.durationRestTime1.selectedHour):")) + (allMeds.durationRestTime1.selectedMin < 9 ? Text("0\(allMeds.durationRestTime1.selectedMin):"): Text("\(allMeds.durationRestTime1.selectedMin):"))
                                                                  + (allMeds.durationRestTime1.selectedSecond < 9 ? Text("0\(allMeds.durationRestTime1.selectedSecond)"): Text("\(allMeds.durationRestTime1.selectedSecond)"))
                                                               
                                                               
                     //                                          Text(durationToText(duration: self.duration))
                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                            }
                                                        }

                     
                     
                     ChimePicker(chime: self.$allMeds.sessionList[0].end_rest_chime, repeatChime: self.$allMeds.sessionList[0].repeat_end_rest_chime, textLabel: { Text("Rest Chime")})
                                   }
                    }
                }
               
        }
        .onDisappear{
         self.allMeds.sessionList[0].prep_time = self.allMeds.durationPrepTime1.toSeconds()
         self.allMeds.sessionList[0].med_time = self.allMeds.durationMedTime1.toSeconds()
         self.allMeds.sessionList[0].interval_time = self.allMeds.durationIntervalTime1.toSeconds()
         self.allMeds.sessionList[0].rest_time = self.allMeds.durationRestTime1.toSeconds()


         self.allMeds.sessionList[0].total_med_time = self.allMeds.sessionList[0].prep_time + self.allMeds.sessionList[0].med_time + self.allMeds.sessionList[0].rest_time
         
         
            if (self.allMeds.sessionList[0].med_name != self.udAllMeds.med_name)
               { UserDefaults.standard.set((self.allMeds.sessionList[0].med_name) , forKey: "k_med_name")
                  print("OD:med_name & ud_med_name: \(self.allMeds.sessionList[0].med_name) \t \(self.udAllMeds.med_name)")

               }
         if self.allMeds.sessionList[0].prep_chime != self.udAllMeds.prep_chime
         { UserDefaults.standard.set((self.allMeds.sessionList[0].prep_chime) , forKey: "k_prep_chime")
               print("prep_chime_in & ud_prep_chime: \(self.allMeds.sessionList[0].prep_chime) \t \(self.udAllMeds.prep_chime)")}
        
         if (self.allMeds.sessionList[0].repeat_prep_chime != self.udAllMeds.repeat_prep_chime)
            { UserDefaults.standard.set((self.allMeds.sessionList[0].repeat_prep_chime) , forKey: "k_repeat_prep_chime")
               print("OD:repeat_prep_chime & ud_repeat_prep_chime: \(self.allMeds.sessionList[0].repeat_prep_chime) \t \(self.udAllMeds.repeat_prep_chime)")
            }
         
         //__
  
         if self.allMeds.sessionList[0].start_med_chime != self.udAllMeds.start_med_chime
            { UserDefaults.standard.set((self.allMeds.sessionList[0].start_med_chime) , forKey: "k_start_med_chime")
                  print("start_med_chime & ud_start_med_chime \(self.allMeds.sessionList[0].start_med_chime) \t \(self.udAllMeds.start_med_chime)")}
           
            if (self.allMeds.sessionList[0].repeat_start_med_chime != self.udAllMeds.repeat_start_med_chime)
               { UserDefaults.standard.set((self.allMeds.sessionList[0].repeat_start_med_chime) , forKey: "k_repeat_start_med_chime")
                  print("OD:repeat_start_med_chime & ud_repeat_start_med_chime: \(self.allMeds.sessionList[0].repeat_start_med_chime) \t \(self.udAllMeds.repeat_start_med_chime)")
               }
         
         //--
         
         //__
         
                if self.allMeds.sessionList[0].interval_chime != self.udAllMeds.interval_chime
                   { UserDefaults.standard.set((self.allMeds.sessionList[0].interval_chime) , forKey: "k_interval_chime")
                         print("interval_chime & ud_interval_chime: \(self.allMeds.sessionList[0].interval_chime) \t \(self.udAllMeds.interval_chime)")}
                  
                   if (self.allMeds.sessionList[0].repeat_interval_chime != self.udAllMeds.repeat_interval_chime)
                      { UserDefaults.standard.set((self.allMeds.sessionList[0].repeat_interval_chime) , forKey: "k_repeat_interval_chime")
                         print("OD:repeat_interval_chime & ud_repeat_interval_chime: \(self.allMeds.sessionList[0].repeat_interval_chime) \t \(self.udAllMeds.repeat_interval_chime)")
                      }
                
                //--
         
         
         //__
         
                if self.allMeds.sessionList[0].end_med_chime != self.udAllMeds.end_med_chime
                   { UserDefaults.standard.set((self.allMeds.sessionList[0].end_med_chime) , forKey: "k_end_med_chime")
                         print("end_med_chime & ud_end_med_chime: \(self.allMeds.sessionList[0].end_med_chime) \t \(self.udAllMeds.end_med_chime)")}
                  
                   if (self.allMeds.sessionList[0].repeat_end_med_chime != self.udAllMeds.repeat_end_med_chime)
                      { UserDefaults.standard.set((self.allMeds.sessionList[0].repeat_end_med_chime) , forKey: "k_repeat_end_med_chime")
                         print("OD:repeat_end_med_chime & ud_repeat_end_med_chime: \(self.allMeds.sessionList[0].repeat_end_med_chime) \t \(self.udAllMeds.repeat_end_med_chime)")
                      }
                
                //--
         //__
         
                if self.allMeds.sessionList[0].end_rest_chime != self.udAllMeds.end_rest_chime
                   { UserDefaults.standard.set((self.allMeds.sessionList[0].end_rest_chime) , forKey: "k_end_rest_chime")
                         print("end_rest_chime & ud_end_rest_chime: \(self.allMeds.sessionList[0].end_rest_chime) \t \(self.udAllMeds.end_rest_chime)")}
                  
                   if (self.allMeds.sessionList[0].repeat_end_rest_chime != self.udAllMeds.repeat_end_rest_chime)
                      { UserDefaults.standard.set((self.allMeds.sessionList[0].repeat_end_rest_chime) , forKey: "k_repeat_end_rest_chime")
                         print("OD:repeat_end_rest_chime & ud_repeat_end_rest_chime: \(self.allMeds.sessionList[0].repeat_end_rest_chime) \t \(self.udAllMeds.repeat_end_rest_chime)")
                      }
                
                //--
         
         
         if (self.allMeds.durationPrepTime1.toSeconds() != self.udAllMeds.prep_time)
            { UserDefaults.standard.set(self.allMeds.durationPrepTime1.toSeconds() , forKey: "k_prep_time")
               print("OD:prep_time & ud_prep_time: \(self.allMeds.durationPrepTime1.toSeconds() ) \t \(self.udAllMeds.prep_time)")

         }
         if (self.allMeds.durationMedTime1.toSeconds() != self.udAllMeds.med_time)
            { UserDefaults.standard.set(self.allMeds.durationMedTime1.toSeconds() , forKey: "k_med_time")
               print("OD:med_time & ud_med_time: \(self.allMeds.durationMedTime1.toSeconds() ) \t \(self.udAllMeds.med_time)")

         }
         if (self.allMeds.durationIntervalTime1.toSeconds() != self.udAllMeds.interval_time)
            { UserDefaults.standard.set(self.allMeds.durationIntervalTime1.toSeconds() , forKey: "k_interval_time")
               print("OD:interval_time & ud_interval_time: \(self.allMeds.durationIntervalTime1.toSeconds() ) \t \(self.udAllMeds.interval_time)")

         }
         if (self.allMeds.durationRestTime1.toSeconds() != self.udAllMeds.rest_time)
            { UserDefaults.standard.set(self.allMeds.durationRestTime1.toSeconds() , forKey: "k_rest_time")
               print("OD:rest_time & ud_rest_time: \(self.allMeds.durationRestTime1.toSeconds() ) \t \(self.udAllMeds.rest_time)")

         }
         

                                                           }

    }
}

struct EditMeditation_Previews: PreviewProvider {
    static var previews: some View {
        EditMeditation()
    }
}
