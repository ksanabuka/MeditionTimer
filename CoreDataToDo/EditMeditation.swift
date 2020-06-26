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
   
   var sessnInx: Int
   
   @EnvironmentObject var allMeds: DataRep


//    @EnvironmentObject var userMedSets: UserMedSets
   
   
   //@EnvironmentObject var userMedSets1: UserMedSets


    @ObservedObject var udAllMeds = udUserMeditationSettings()

    
    @State private var showingTimer = true

    
    
    @State var showingDetail = false

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
   func navigationLinkToTimePicker(sessnInx: Int, textLabel: String) -> some View {
      let udInx: Int = self.allMeds.sessionList[sessnInx].udId
      
      switch udInx {
      case 0 where textLabel == "Preparation Time":
         return
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationPrepTime1.selectedHour, selectedMin: self.$allMeds.durationPrepTime1.selectedMin, selectedSecond: self.$allMeds.durationPrepTime1.selectedSecond)){
             HStack {
                 Text(textLabel)
                 Spacer()
          ((allMeds.durationPrepTime1.selectedHour < 9 ? Text("0\(allMeds.durationPrepTime1.selectedHour):"): Text("\(allMeds.durationPrepTime1.selectedHour):")) + (allMeds.durationPrepTime1.selectedMin < 9 ? Text("0\(allMeds.durationPrepTime1.selectedMin):"): Text("\(allMeds.durationPrepTime1.selectedMin):"))
                + (allMeds.durationPrepTime1.selectedSecond < 9 ? Text("0\(allMeds.durationPrepTime1.selectedSecond)"): Text("\(allMeds.durationPrepTime1.selectedSecond)")))
                
             }
         }
      case 0 where textLabel == "Meditation Time":
            return
      
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationMedTime1.selectedHour, selectedMin: self.$allMeds.durationMedTime1.selectedMin, selectedSecond: self.$allMeds.durationMedTime1.selectedSecond)){
                                               HStack {
                                                   Text("Meditation Time")
                                                   Spacer()
                                                  (allMeds.durationMedTime1.selectedHour < 9 ? Text("0\(allMeds.durationMedTime1.selectedHour):"): Text("\(allMeds.durationMedTime1.selectedHour):")) + (allMeds.durationMedTime1.selectedMin < 9 ? Text("0\(allMeds.durationMedTime1.selectedMin):"): Text("\(allMeds.durationMedTime1.selectedMin):"))
                                                     + (allMeds.durationMedTime1.selectedSecond < 9 ? Text("0\(allMeds.durationMedTime1.selectedSecond)"): Text("\(allMeds.durationMedTime1.selectedSecond)"))
                                               }
                                           }

      
      
      case 0 where textLabel == "Interval Time":
         return
      
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

         
      case 0 where textLabel == "Rest Time":
         return
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

         
      case 1 where textLabel == "Preparation Time":
         return
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationPrepTime2.selectedHour, selectedMin: self.$allMeds.durationPrepTime2.selectedMin, selectedSecond: self.$allMeds.durationPrepTime2.selectedSecond)){
             HStack {
                 Text(textLabel)
                 Spacer()
          ((allMeds.durationPrepTime2.selectedHour < 9 ? Text("0\(allMeds.durationPrepTime2.selectedHour):"): Text("\(allMeds.durationPrepTime2.selectedHour):")) + (allMeds.durationPrepTime2.selectedMin < 9 ? Text("0\(allMeds.durationPrepTime2.selectedMin):"): Text("\(allMeds.durationPrepTime2.selectedMin):"))
                + (allMeds.durationPrepTime2.selectedSecond < 9 ? Text("0\(allMeds.durationPrepTime2.selectedSecond)"): Text("\(allMeds.durationPrepTime2.selectedSecond)")))
                
             }
         }
      case 1 where textLabel == "Meditation Time":
            return
      
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationMedTime2.selectedHour, selectedMin: self.$allMeds.durationMedTime2.selectedMin, selectedSecond: self.$allMeds.durationMedTime2.selectedSecond)){
                                               HStack {
                                                   Text("Meditation Time")
                                                   Spacer()
                                                  (allMeds.durationMedTime2.selectedHour < 9 ? Text("0\(allMeds.durationMedTime2.selectedHour):"): Text("\(allMeds.durationMedTime2.selectedHour):")) + (allMeds.durationMedTime2.selectedMin < 9 ? Text("0\(allMeds.durationMedTime2.selectedMin):"): Text("\(allMeds.durationMedTime2.selectedMin):"))
                                                     + (allMeds.durationMedTime2.selectedSecond < 9 ? Text("0\(allMeds.durationMedTime2.selectedSecond)"): Text("\(allMeds.durationMedTime2.selectedSecond)"))
                                               }
                                           }

      
      
      case 1 where textLabel == "Interval Time":
         return
      
          NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationIntervalTime2.selectedHour, selectedMin: self.$allMeds.durationIntervalTime2.selectedMin, selectedSecond: self.$allMeds.durationIntervalTime2.selectedSecond)){
                                                HStack {
                                                    Text("Interval Time")
                                                    Spacer()
                                                   (allMeds.durationIntervalTime2.selectedHour < 9 ? Text("0\(allMeds.durationIntervalTime2.selectedHour):"): Text("\(allMeds.durationIntervalTime2.selectedHour):")) + (allMeds.durationIntervalTime2.selectedMin < 9 ? Text("0\(allMeds.durationIntervalTime2.selectedMin):"): Text("\(allMeds.durationIntervalTime2.selectedMin):"))
                                                      + (allMeds.durationIntervalTime2.selectedSecond < 9 ? Text("0\(allMeds.durationIntervalTime2.selectedSecond)"): Text("\(allMeds.durationIntervalTime2.selectedSecond)"))
                                                   
                                                   
         //                                          Text(durationToText(duration: self.duration))
         //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                }
                                            }

         
      case 1 where textLabel == "Rest Time":
         return
          NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationRestTime2.selectedHour, selectedMin: self.$allMeds.durationRestTime2.selectedMin, selectedSecond: self.$allMeds.durationRestTime2.selectedSecond)){
                                                HStack {
                                                    Text("Rest Time")
                                                    Spacer()
                                                   (allMeds.durationRestTime2.selectedHour < 9 ? Text("0\(allMeds.durationRestTime2.selectedHour):"): Text("\(allMeds.durationRestTime2.selectedHour):")) + (allMeds.durationRestTime2.selectedMin < 9 ? Text("0\(allMeds.durationRestTime2.selectedMin):"): Text("\(allMeds.durationRestTime2.selectedMin):"))
                                                      + (allMeds.durationRestTime2.selectedSecond < 9 ? Text("0\(allMeds.durationRestTime2.selectedSecond)"): Text("\(allMeds.durationRestTime2.selectedSecond)"))
                                                   
                                                   
         //                                          Text(durationToText(duration: self.duration))
         //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                }
                                            }
         
      default:
         return
          NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationRestTime1.selectedHour, selectedMin: self.$allMeds.durationRestTime1.selectedMin, selectedSecond: self.$allMeds.durationRestTime1.selectedSecond)){
                                                HStack {
                                                    Text("Default")
                                                    Spacer()
                                                   (allMeds.durationRestTime1.selectedHour < 9 ? Text("0\(allMeds.durationRestTime1.selectedHour):"): Text("\(allMeds.durationRestTime1.selectedHour):")) + (allMeds.durationRestTime1.selectedMin < 9 ? Text("0\(allMeds.durationRestTime1.selectedMin):"): Text("\(allMeds.durationRestTime1.selectedMin):"))
                                                      + (allMeds.durationRestTime1.selectedSecond < 9 ? Text("0\(allMeds.durationRestTime1.selectedSecond)"): Text("\(allMeds.durationRestTime1.selectedSecond)"))
                                                   
                                                   
         //                                          Text(durationToText(duration: self.duration))
         //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                }
                                            }


      
      }
   }
    
    
    var body: some View {
        Group {
                Form {
                    Section {

                        TextField("Enter Meditation name", text: self.$allMeds.sessionList[self.sessnInx].med_name)            .padding().multilineTextAlignment(.trailing)
                                                
                     
                     
                    Group {
                     navigationLinkToTimePicker(sessnInx: sessnInx, textLabel: "Preparation Time")
//                     NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationPrepTime1.selectedHour, selectedMin: self.$allMeds.durationPrepTime1.selectedMin, selectedSecond: self.$allMeds.durationPrepTime1.selectedSecond)){
//                                       HStack {
//                                           Text("Preparation Time")
//                                           Spacer()
//                                    ((allMeds.durationPrepTime1.selectedHour < 9 ? Text("0\(allMeds.durationPrepTime1.selectedHour):"): Text("\(allMeds.durationPrepTime1.selectedHour):")) + (allMeds.durationPrepTime1.selectedMin < 9 ? Text("0\(allMeds.durationPrepTime1.selectedMin):"): Text("\(allMeds.durationPrepTime1.selectedMin):"))
//                                          + (allMeds.durationPrepTime1.selectedSecond < 9 ? Text("0\(allMeds.durationPrepTime1.selectedSecond)"): Text("\(allMeds.durationPrepTime1.selectedSecond)")))
//
//                                       }
//                                   }
//
                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].prep_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_prep_chime, textLabel: { Text("Preparation Chime")})

                     Group {
                        
                        navigationLinkToTimePicker(sessnInx: sessnInx, textLabel: "Meditation Time")

                        
//                      NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationMedTime1.selectedHour, selectedMin: self.$allMeds.durationMedTime1.selectedMin, selectedSecond: self.$allMeds.durationMedTime1.selectedSecond)){
//                                                            HStack {
//                                                                Text("Meditation Time")
//                                                                Spacer()
//                                                               (allMeds.durationMedTime1.selectedHour < 9 ? Text("0\(allMeds.durationMedTime1.selectedHour):"): Text("\(allMeds.durationMedTime1.selectedHour):")) + (allMeds.durationMedTime1.selectedMin < 9 ? Text("0\(allMeds.durationMedTime1.selectedMin):"): Text("\(allMeds.durationMedTime1.selectedMin):"))
//                                                                  + (allMeds.durationMedTime1.selectedSecond < 9 ? Text("0\(allMeds.durationMedTime1.selectedSecond)"): Text("\(allMeds.durationMedTime1.selectedSecond)"))
//                                                            }
//                                                        }
                      
                        ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].start_med_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_start_med_chime, textLabel:{ Text("Start Chime")})

                     }
                     
//                      NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationIntervalTime1.selectedHour, selectedMin: self.$allMeds.durationIntervalTime1.selectedMin, selectedSecond: self.$allMeds.durationIntervalTime1.selectedSecond)){
//                                                            HStack {
//                                                                Text("Interval Time")
//                                                                Spacer()
//                                                               (allMeds.durationIntervalTime1.selectedHour < 9 ? Text("0\(allMeds.durationIntervalTime1.selectedHour):"): Text("\(allMeds.durationIntervalTime1.selectedHour):")) + (allMeds.durationIntervalTime1.selectedMin < 9 ? Text("0\(allMeds.durationIntervalTime1.selectedMin):"): Text("\(allMeds.durationIntervalTime1.selectedMin):"))
//                                                                  + (allMeds.durationIntervalTime1.selectedSecond < 9 ? Text("0\(allMeds.durationIntervalTime1.selectedSecond)"): Text("\(allMeds.durationIntervalTime1.selectedSecond)"))
//
//
//                     //                                          Text(durationToText(duration: self.duration))
//                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))
//
//                                                            }
//                                                        }
                     
                     navigationLinkToTimePicker(sessnInx: sessnInx, textLabel: "Interval Time")

                     
                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].interval_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_interval_chime, textLabel: { Text("Interval Chime")})

                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].end_med_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_end_med_chime, textLabel: { Text("End Alert")})

                     
//                      NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationRestTime1.selectedHour, selectedMin: self.$allMeds.durationRestTime1.selectedMin, selectedSecond: self.$allMeds.durationRestTime1.selectedSecond)){
//                                                            HStack {
//                                                                Text("Rest Time")
//                                                                Spacer()
//                                                               (allMeds.durationRestTime1.selectedHour < 9 ? Text("0\(allMeds.durationRestTime1.selectedHour):"): Text("\(allMeds.durationRestTime1.selectedHour):")) + (allMeds.durationRestTime1.selectedMin < 9 ? Text("0\(allMeds.durationRestTime1.selectedMin):"): Text("\(allMeds.durationRestTime1.selectedMin):"))
//                                                                  + (allMeds.durationRestTime1.selectedSecond < 9 ? Text("0\(allMeds.durationRestTime1.selectedSecond)"): Text("\(allMeds.durationRestTime1.selectedSecond)"))
//
//
//                     //                                          Text(durationToText(duration: self.duration))
//                     //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))
//
//                                                            }
//                                                        }

                     
                    navigationLinkToTimePicker(sessnInx: sessnInx, textLabel: "Rest Time")

                     
                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].end_rest_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_end_rest_chime, textLabel: { Text("Rest Chime")})
                                   }
                    }
                }
               
        }
        .onDisappear{
         self.allMeds.sessionList[self.sessnInx].prep_time = self.allMeds.durationPrepTime1.toSeconds()
         self.allMeds.sessionList[self.sessnInx].med_time = self.allMeds.durationMedTime1.toSeconds()
         self.allMeds.sessionList[self.sessnInx].interval_time = self.allMeds.durationIntervalTime1.toSeconds()
         self.allMeds.sessionList[self.sessnInx].rest_time = self.allMeds.durationRestTime1.toSeconds()


         self.allMeds.sessionList[self.sessnInx].total_med_time = self.allMeds.sessionList[self.sessnInx].prep_time + self.allMeds.sessionList[self.sessnInx].med_time + self.allMeds.sessionList[self.sessnInx].rest_time
         
         
            if (self.allMeds.sessionList[self.sessnInx].med_name != self.udAllMeds.med_name1)
               { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].med_name) , forKey: "k_med_name1")
                  print("OD:med_name & ud_med_name: \(self.allMeds.sessionList[self.sessnInx].med_name) \t \(self.udAllMeds.med_name1)")

               }
         if self.allMeds.sessionList[self.sessnInx].prep_chime != self.udAllMeds.prep_chime1
         { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].prep_chime) , forKey: "k_prep_chime1")
               print("prep_chime_in & ud_prep_chime: \(self.allMeds.sessionList[self.sessnInx].prep_chime) \t \(self.udAllMeds.prep_chime1)")}
        
         if (self.allMeds.sessionList[self.sessnInx].repeat_prep_chime != self.udAllMeds.repeat_prep_chime1)
            { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_prep_chime) , forKey: "k_repeat_prep_chime1")
               print("OD:repeat_prep_chime & ud_repeat_prep_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_prep_chime) \t \(self.udAllMeds.repeat_prep_chime1)")
            }
         
         //__
  
         if self.allMeds.sessionList[self.sessnInx].start_med_chime != self.udAllMeds.start_med_chime1
            { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].start_med_chime) , forKey: "k_start_med_chime1")
                  print("start_med_chime & ud_start_med_chime \(self.allMeds.sessionList[self.sessnInx].start_med_chime) \t \(self.udAllMeds.start_med_chime1)")}
           
            if (self.allMeds.sessionList[self.sessnInx].repeat_start_med_chime != self.udAllMeds.repeat_start_med_chime1)
               { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_start_med_chime) , forKey: "k_repeat_start_med_chime1")
                  print("OD:repeat_start_med_chime & ud_repeat_start_med_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_start_med_chime) \t \(self.udAllMeds.repeat_start_med_chime1)")
               }
         
         //--
         
         //__
         
                if self.allMeds.sessionList[self.sessnInx].interval_chime != self.udAllMeds.interval_chime1
                   { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].interval_chime) , forKey: "k_interval_chime1")
                         print("interval_chime & ud_interval_chime: \(self.allMeds.sessionList[self.sessnInx].interval_chime) \t \(self.udAllMeds.interval_chime1)")}
                  
                   if (self.allMeds.sessionList[self.sessnInx].repeat_interval_chime != self.udAllMeds.repeat_interval_chime1)
                      { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_interval_chime) , forKey: "k_repeat_interval_chime1")
                         print("OD:repeat_interval_chime & ud_repeat_interval_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_interval_chime) \t \(self.udAllMeds.repeat_interval_chime1)")
                      }
                
                //--
         
         
         //__
         
                if self.allMeds.sessionList[self.sessnInx].end_med_chime != self.udAllMeds.end_med_chime1
                   { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].end_med_chime) , forKey: "k_end_med_chime1")
                         print("end_med_chime & ud_end_med_chime: \(self.allMeds.sessionList[self.sessnInx].end_med_chime) \t \(self.udAllMeds.end_med_chime1)")}
                  
                   if (self.allMeds.sessionList[self.sessnInx].repeat_end_med_chime != self.udAllMeds.repeat_end_med_chime1)
                      { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_end_med_chime) , forKey: "k_repeat_end_med_chime1")
                         print("OD:repeat_end_med_chime & ud_repeat_end_med_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_end_med_chime) \t \(self.udAllMeds.repeat_end_med_chime1)")
                      }
                
                //--
         //__
         
                if self.allMeds.sessionList[self.sessnInx].end_rest_chime != self.udAllMeds.end_rest_chime1
                   { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].end_rest_chime) , forKey: "k_end_rest_chime1")
                         print("end_rest_chime & ud_end_rest_chime: \(self.allMeds.sessionList[self.sessnInx].end_rest_chime) \t \(self.udAllMeds.end_rest_chime1)")}
                  
                   if (self.allMeds.sessionList[self.sessnInx].repeat_end_rest_chime != self.udAllMeds.repeat_end_rest_chime1)
                      { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_end_rest_chime) , forKey: "k_repeat_end_rest_chime1")
                         print("OD:repeat_end_rest_chime & ud_repeat_end_rest_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_end_rest_chime) \t \(self.udAllMeds.repeat_end_rest_chime1)")
                      }
                
                //--
         
         
         if (self.allMeds.durationPrepTime1.toSeconds() != self.udAllMeds.prep_time1)
            { UserDefaults.standard.set(self.allMeds.durationPrepTime1.toSeconds() , forKey: "k_prep_time1")
               print("OD:prep_time & ud_prep_time: \(self.allMeds.durationPrepTime1.toSeconds() ) \t \(self.udAllMeds.prep_time1)")

         }
         if (self.allMeds.durationMedTime1.toSeconds() != self.udAllMeds.med_time1)
            { UserDefaults.standard.set(self.allMeds.durationMedTime1.toSeconds() , forKey: "k_med_time1")
               print("OD:med_time & ud_med_time: \(self.allMeds.durationMedTime1.toSeconds() ) \t \(self.udAllMeds.med_time1)")

         }
         if (self.allMeds.durationIntervalTime1.toSeconds() != self.udAllMeds.interval_time1)
            { UserDefaults.standard.set(self.allMeds.durationIntervalTime1.toSeconds() , forKey: "k_interval_time1")
               print("OD:interval_time & ud_interval_time: \(self.allMeds.durationIntervalTime1.toSeconds() ) \t \(self.udAllMeds.interval_time1)")

         }
         if (self.allMeds.durationRestTime1.toSeconds() != self.udAllMeds.rest_time1)
            { UserDefaults.standard.set(self.allMeds.durationRestTime1.toSeconds() , forKey: "k_rest_time1")
               print("OD:rest_time & ud_rest_time: \(self.allMeds.durationRestTime1.toSeconds() ) \t \(self.udAllMeds.rest_time1)")

         }
         

                                                           }

    }
}
