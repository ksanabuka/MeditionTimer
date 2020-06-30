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
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationPrepTime0.selectedHour, selectedMin: self.$allMeds.durationPrepTime0.selectedMin, selectedSecond: self.$allMeds.durationPrepTime0.selectedSecond)){
             HStack {
                 Text(textLabel)
                 Spacer()
          ((allMeds.durationPrepTime0.selectedHour < 9 ? Text("0\(allMeds.durationPrepTime0.selectedHour):"): Text("\(allMeds.durationPrepTime0.selectedHour):")) + (allMeds.durationPrepTime0.selectedMin < 9 ? Text("0\(allMeds.durationPrepTime0.selectedMin):"): Text("\(allMeds.durationPrepTime0.selectedMin):"))
                + (allMeds.durationPrepTime0.selectedSecond < 9 ? Text("0\(allMeds.durationPrepTime0.selectedSecond)"): Text("\(allMeds.durationPrepTime0.selectedSecond)")))
                
             }
         }
      case 0 where textLabel == "Meditation Time":
            return
      
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationMedTime0.selectedHour, selectedMin: self.$allMeds.durationMedTime0.selectedMin, selectedSecond: self.$allMeds.durationMedTime0.selectedSecond)){
                                               HStack {
                                                   Text("Meditation Time")
                                                   Spacer()
                                                  (allMeds.durationMedTime0.selectedHour < 9 ? Text("0\(allMeds.durationMedTime0.selectedHour):"): Text("\(allMeds.durationMedTime0.selectedHour):")) + (allMeds.durationMedTime0.selectedMin < 9 ? Text("0\(allMeds.durationMedTime0.selectedMin):"): Text("\(allMeds.durationMedTime0.selectedMin):"))
                                                     + (allMeds.durationMedTime0.selectedSecond < 9 ? Text("0\(allMeds.durationMedTime0.selectedSecond)"): Text("\(allMeds.durationMedTime0.selectedSecond)"))
                                               }
                                           }

      
      
      case 0 where textLabel == "Interval Time":
         return
      
          NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationIntervalTime0.selectedHour, selectedMin: self.$allMeds.durationIntervalTime0.selectedMin, selectedSecond: self.$allMeds.durationIntervalTime0.selectedSecond)){
                                                HStack {
                                                    Text("Interval Time")
                                                    Spacer()
                                                   (allMeds.durationIntervalTime0.selectedHour < 9 ? Text("0\(allMeds.durationIntervalTime0.selectedHour):"): Text("\(allMeds.durationIntervalTime0.selectedHour):")) + (allMeds.durationIntervalTime0.selectedMin < 9 ? Text("0\(allMeds.durationIntervalTime0.selectedMin):"): Text("\(allMeds.durationIntervalTime0.selectedMin):"))
                                                      + (allMeds.durationIntervalTime0.selectedSecond < 9 ? Text("0\(allMeds.durationIntervalTime0.selectedSecond)"): Text("\(allMeds.durationIntervalTime0.selectedSecond)"))
                                                   
                                                   
         //                                          Text(durationToText(duration: self.duration))
         //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                }
                                            }

         
      case 0 where textLabel == "Rest Time":
         return
          NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationRestTime0.selectedHour, selectedMin: self.$allMeds.durationRestTime0.selectedMin, selectedSecond: self.$allMeds.durationRestTime0.selectedSecond)){
                                                HStack {
                                                    Text("Rest Time")
                                                    Spacer()
                                                   (allMeds.durationRestTime0.selectedHour < 9 ? Text("0\(allMeds.durationRestTime0.selectedHour):"): Text("\(allMeds.durationRestTime0.selectedHour):")) + (allMeds.durationRestTime0.selectedMin < 9 ? Text("0\(allMeds.durationRestTime0.selectedMin):"): Text("\(allMeds.durationRestTime0.selectedMin):"))
                                                      + (allMeds.durationRestTime0.selectedSecond < 9 ? Text("0\(allMeds.durationRestTime0.selectedSecond)"): Text("\(allMeds.durationRestTime0.selectedSecond)"))
                                                   
                                                   
         //                                          Text(durationToText(duration: self.duration))
         //                                          Text(String(format: "%02d:%02d:%02d", self.selectedHour, self.selectedMin, self.selectedSecond))

                                                }
                                            }

         
      case 1 where textLabel == "Preparation Time":
         return
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationPrepTime1.selectedHour, selectedMin: self.$allMeds.durationPrepTime1.selectedMin, selectedSecond: self.$allMeds.durationPrepTime1.selectedSecond)){
             HStack {
                 Text(textLabel)
                 Spacer()
          ((allMeds.durationPrepTime1.selectedHour < 9 ? Text("0\(allMeds.durationPrepTime1.selectedHour):"): Text("\(allMeds.durationPrepTime1.selectedHour):")) + (allMeds.durationPrepTime1.selectedMin < 9 ? Text("0\(allMeds.durationPrepTime1.selectedMin):"): Text("\(allMeds.durationPrepTime1.selectedMin):"))
                + (allMeds.durationPrepTime1.selectedSecond < 9 ? Text("0\(allMeds.durationPrepTime1.selectedSecond)"): Text("\(allMeds.durationPrepTime1.selectedSecond)")))
                
             }
         }
      case 1 where textLabel == "Meditation Time":
            return
      
         NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationMedTime1.selectedHour, selectedMin: self.$allMeds.durationMedTime1.selectedMin, selectedSecond: self.$allMeds.durationMedTime1.selectedSecond)){
                                               HStack {
                                                   Text("Meditation Time")
                                                   Spacer()
                                                  (allMeds.durationMedTime1.selectedHour < 9 ? Text("0\(allMeds.durationMedTime1.selectedHour):"): Text("\(allMeds.durationMedTime1.selectedHour):")) + (allMeds.durationMedTime1.selectedMin < 9 ? Text("0\(allMeds.durationMedTime1.selectedMin):"): Text("\(allMeds.durationMedTime1.selectedMin):"))
                                                     + (allMeds.durationMedTime1.selectedSecond < 9 ? Text("0\(allMeds.durationMedTime1.selectedSecond)"): Text("\(allMeds.durationMedTime1.selectedSecond)"))
                                               }
                                           }

      
      
      case 1 where textLabel == "Interval Time":
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

         
      case 1 where textLabel == "Rest Time":
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
         
      default:
         return
          NavigationLink(destination: TimePicker(selectedHour: self.$allMeds.durationRestTime0.selectedHour, selectedMin: self.$allMeds.durationRestTime0.selectedMin, selectedSecond: self.$allMeds.durationRestTime0.selectedSecond)){
                                                HStack {
                                                    Text("Default")
                                                    Spacer()
                                                   (allMeds.durationRestTime0.selectedHour < 9 ? Text("0\(allMeds.durationRestTime0.selectedHour):"): Text("\(allMeds.durationRestTime0.selectedHour):")) + (allMeds.durationRestTime0.selectedMin < 9 ? Text("0\(allMeds.durationRestTime0.selectedMin):"): Text("\(allMeds.durationRestTime0.selectedMin):"))
                                                      + (allMeds.durationRestTime0.selectedSecond < 9 ? Text("0\(allMeds.durationRestTime0.selectedSecond)"): Text("\(allMeds.durationRestTime0.selectedSecond)"))
                                                   
                                                   
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

                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].prep_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_prep_chime, textLabel: { Text("Preparation Chime")})

                     Group {
                        
                        navigationLinkToTimePicker(sessnInx: sessnInx, textLabel: "Meditation Time")

                        
                      
                        ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].start_med_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_start_med_chime, textLabel:{ Text("Start Chime")})

                     }
                     
                     
                     navigationLinkToTimePicker(sessnInx: sessnInx, textLabel: "Interval Time")

                     
                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].interval_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_interval_chime, textLabel: { Text("Interval Chime")})

                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].end_med_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_end_med_chime, textLabel: { Text("End Alert")})

                     

                     
                    navigationLinkToTimePicker(sessnInx: sessnInx, textLabel: "Rest Time")

                     
                     ChimePicker(chime: self.$allMeds.sessionList[self.sessnInx].end_rest_chime, repeatChime: self.$allMeds.sessionList[self.sessnInx].repeat_end_rest_chime, textLabel: { Text("Rest Chime")})
                                   }
                    }
                }
               
        }
        .onDisappear{
         self.allMeds.sessionList[self.sessnInx].prep_time = self.allMeds.durationPrepTime0.toSeconds()
         self.allMeds.sessionList[self.sessnInx].med_time = self.allMeds.durationMedTime0.toSeconds()
         self.allMeds.sessionList[self.sessnInx].interval_time = self.allMeds.durationIntervalTime0.toSeconds()
         self.allMeds.sessionList[self.sessnInx].rest_time = self.allMeds.durationRestTime0.toSeconds()


         self.allMeds.sessionList[self.sessnInx].total_med_time = self.allMeds.sessionList[self.sessnInx].prep_time + self.allMeds.sessionList[self.sessnInx].med_time + self.allMeds.sessionList[self.sessnInx].rest_time
         
         
            if (self.allMeds.sessionList[self.sessnInx].med_name != self.udAllMeds.med_name0)
               { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].med_name) , forKey: "k_med_name0")
                  print("OD:med_name & ud_med_name: \(self.allMeds.sessionList[self.sessnInx].med_name) \t \(self.udAllMeds.med_name0)")

               }
         if self.allMeds.sessionList[self.sessnInx].prep_chime != self.udAllMeds.prep_chime0
         { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].prep_chime) , forKey: "k_prep_chime0")
               print("prep_chime_in & ud_prep_chime: \(self.allMeds.sessionList[self.sessnInx].prep_chime) \t \(self.udAllMeds.prep_chime0)")}
        
         if (self.allMeds.sessionList[self.sessnInx].repeat_prep_chime != self.udAllMeds.repeat_prep_chime0)
            { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_prep_chime) , forKey: "k_repeat_prep_chime0")
               print("OD:repeat_prep_chime & ud_repeat_prep_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_prep_chime) \t \(self.udAllMeds.repeat_prep_chime0)")
            }
         
         //__
  
         if self.allMeds.sessionList[self.sessnInx].start_med_chime != self.udAllMeds.start_med_chime0
            { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].start_med_chime) , forKey: "k_start_med_chime0")
                  print("start_med_chime & ud_start_med_chime \(self.allMeds.sessionList[self.sessnInx].start_med_chime) \t \(self.udAllMeds.start_med_chime0)")}
           
            if (self.allMeds.sessionList[self.sessnInx].repeat_start_med_chime != self.udAllMeds.repeat_start_med_chime0)
               { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_start_med_chime) , forKey: "k_repeat_start_med_chime0")
                  print("OD:repeat_start_med_chime & ud_repeat_start_med_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_start_med_chime) \t \(self.udAllMeds.repeat_start_med_chime0)")
               }
         
         //--
         
         //__
         
                if self.allMeds.sessionList[self.sessnInx].interval_chime != self.udAllMeds.interval_chime0
                   { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].interval_chime) , forKey: "k_interval_chime0")
                         print("interval_chime & ud_interval_chime: \(self.allMeds.sessionList[self.sessnInx].interval_chime) \t \(self.udAllMeds.interval_chime0)")}
                  
                   if (self.allMeds.sessionList[self.sessnInx].repeat_interval_chime != self.udAllMeds.repeat_interval_chime0)
                      { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_interval_chime) , forKey: "k_repeat_interval_chime0")
                         print("OD:repeat_interval_chime & ud_repeat_interval_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_interval_chime) \t \(self.udAllMeds.repeat_interval_chime0)")
                      }
                
                //--
         
         
         //__
         
                if self.allMeds.sessionList[self.sessnInx].end_med_chime != self.udAllMeds.end_med_chime0
                   { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].end_med_chime) , forKey: "k_end_med_chime0")
                         print("end_med_chime & ud_end_med_chime: \(self.allMeds.sessionList[self.sessnInx].end_med_chime) \t \(self.udAllMeds.end_med_chime0)")}
                  
                   if (self.allMeds.sessionList[self.sessnInx].repeat_end_med_chime != self.udAllMeds.repeat_end_med_chime0)
                      { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_end_med_chime) , forKey: "k_repeat_end_med_chime0")
                         print("OD:repeat_end_med_chime & ud_repeat_end_med_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_end_med_chime) \t \(self.udAllMeds.repeat_end_med_chime0)")
                      }
                
                //--
         //__
         
                if self.allMeds.sessionList[self.sessnInx].end_rest_chime != self.udAllMeds.end_rest_chime0
                   { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].end_rest_chime) , forKey: "k_end_rest_chime0")
                         print("end_rest_chime & ud_end_rest_chime: \(self.allMeds.sessionList[self.sessnInx].end_rest_chime) \t \(self.udAllMeds.end_rest_chime0)")}
                  
                   if (self.allMeds.sessionList[self.sessnInx].repeat_end_rest_chime != self.udAllMeds.repeat_end_rest_chime0)
                      { UserDefaults.standard.set((self.allMeds.sessionList[self.sessnInx].repeat_end_rest_chime) , forKey: "k_repeat_end_rest_chime0")
                         print("OD:repeat_end_rest_chime & ud_repeat_end_rest_chime: \(self.allMeds.sessionList[self.sessnInx].repeat_end_rest_chime) \t \(self.udAllMeds.repeat_end_rest_chime0)")
                      }
                
                //--
         
         
         if (self.allMeds.durationPrepTime0.toSeconds() != self.udAllMeds.prep_time0)
            { UserDefaults.standard.set(self.allMeds.durationPrepTime0.toSeconds() , forKey: "k_prep_time0")
               print("OD:prep_time & ud_prep_time: \(self.allMeds.durationPrepTime0.toSeconds() ) \t \(self.udAllMeds.prep_time0)")

         }
         if (self.allMeds.durationMedTime0.toSeconds() != self.udAllMeds.med_time0)
            { UserDefaults.standard.set(self.allMeds.durationMedTime0.toSeconds() , forKey: "k_med_time0")
               print("OD:med_time & ud_med_time: \(self.allMeds.durationMedTime0.toSeconds() ) \t \(self.udAllMeds.med_time0)")

         }
         if (self.allMeds.durationIntervalTime0.toSeconds() != self.udAllMeds.interval_time0)
            { UserDefaults.standard.set(self.allMeds.durationIntervalTime0.toSeconds() , forKey: "k_interval_time0")
               print("OD:interval_time & ud_interval_time: \(self.allMeds.durationIntervalTime0.toSeconds() ) \t \(self.udAllMeds.interval_time0)")

         }
         if (self.allMeds.durationRestTime0.toSeconds() != self.udAllMeds.rest_time0)
            { UserDefaults.standard.set(self.allMeds.durationRestTime0.toSeconds() , forKey: "k_rest_time0")
               print("OD:rest_time & ud_rest_time: \(self.allMeds.durationRestTime0.toSeconds() ) \t \(self.udAllMeds.rest_time0)")

         }
         

                                                           }

    }
}
