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
    
   func compareListToUdUpdateUd(sessnInx: Int) {
      
      var durationPrepTime: SelectedDuration
      var durationMedTime: SelectedDuration
      var durationIntervalTime: SelectedDuration
      var durationRestTime: SelectedDuration
      
      var med_name: String
      var med_note: String
      var prep_time: Int
      var med_time: Int
      var interval_time: Int
      var rest_time: Int
      var prep_chime: Int
      var repeat_prep_chime: Int
      var start_med_chime: Int
      var repeat_start_med_chime: Int
      var interval_chime: Int
      var repeat_interval_chime: Int
      var end_med_chime: Int
      var repeat_end_med_chime: Int
      var end_rest_chime: Int
      var repeat_end_rest_chime: Int

      
      var k_med_name: String
      var k_med_note: String
      var k_prep_time: String
      var k_med_time: String
      var k_interval_time: String
      var k_rest_time: String
      var k_prep_chime: String
      var k_repeat_prep_chime: String
      var k_start_med_chime: String
      var k_repeat_start_med_chime: String
      var k_interval_chime: String
      var k_repeat_interval_chime: String
      var k_end_med_chime: String
      var k_repeat_end_med_chime: String
      var k_end_rest_chime: String
      var k_repeat_end_rest_chime: String

      
      
      let udId: Int = self.allMeds.sessionList[sessnInx].udId
      switch udId {
      case 0:
         durationPrepTime = self.allMeds.durationPrepTime0
         durationMedTime = self.allMeds.durationMedTime0
         durationIntervalTime  = self.allMeds.durationIntervalTime0
         durationRestTime = self.allMeds.durationRestTime0
         
         med_name = self.udAllMeds.med_name0
         med_note = self.udAllMeds.med_note0
         prep_time = self.udAllMeds.prep_time0
         med_time = self.udAllMeds.med_time0
         interval_time = self.udAllMeds.interval_time0
         rest_time = self.udAllMeds.rest_time0
         prep_chime = self.udAllMeds.prep_chime0
         repeat_prep_chime = self.udAllMeds.repeat_prep_chime0
         start_med_chime = self.udAllMeds.start_med_chime0
         repeat_start_med_chime = self.udAllMeds.repeat_start_med_chime0
         interval_chime = self.udAllMeds.interval_chime0
         repeat_interval_chime = self.udAllMeds.repeat_interval_chime0
         end_med_chime = self.udAllMeds.end_med_chime0
         repeat_end_med_chime = self.udAllMeds.repeat_end_med_chime0
         end_rest_chime = self.udAllMeds.end_rest_chime0
         repeat_end_rest_chime = self.udAllMeds.repeat_end_rest_chime0

         k_med_name = "k_med_name0"
         k_med_note = "k_med_note0"
         k_prep_time = "k_prep_time0"
         k_med_time = "k_med_time0"
         k_interval_time = "k_interval_time0"
         k_rest_time = "k_rest_time0"
         k_prep_chime = "k_prep_chime0"
         k_repeat_prep_chime = "k_repeat_prep_chime0"
         k_start_med_chime = "k_start_med_chime0"
         k_repeat_start_med_chime = "k_repeat_start_med_chime0"
         k_interval_chime = "k_interval_chime0"
         k_repeat_interval_chime = "k_repeat_interval_chime0"
         k_end_med_chime = "k_end_med_chime0"
         k_repeat_end_med_chime = "k_repeat_end_med_chime0"
         k_end_rest_chime = "k_end_rest_chime0"
         k_repeat_end_rest_chime = "k_repeat_end_rest_chime0"

      
      case 1:
         durationPrepTime = self.allMeds.durationPrepTime1
         durationMedTime = self.allMeds.durationMedTime1
         durationIntervalTime  = self.allMeds.durationIntervalTime1
         durationRestTime = self.allMeds.durationRestTime1
         
         med_name = self.udAllMeds.med_name1
         med_note = self.udAllMeds.med_note1
         prep_time = self.udAllMeds.prep_time1
         med_time = self.udAllMeds.med_time1
         interval_time = self.udAllMeds.interval_time1
         rest_time = self.udAllMeds.rest_time1
         prep_chime = self.udAllMeds.prep_chime1
         repeat_prep_chime = self.udAllMeds.repeat_prep_chime1
         start_med_chime = self.udAllMeds.start_med_chime1
         repeat_start_med_chime = self.udAllMeds.repeat_start_med_chime1
         interval_chime = self.udAllMeds.interval_chime1
         repeat_interval_chime = self.udAllMeds.repeat_interval_chime1
         end_med_chime = self.udAllMeds.end_med_chime1
         repeat_end_med_chime = self.udAllMeds.repeat_end_med_chime1
         end_rest_chime = self.udAllMeds.end_rest_chime1
         repeat_end_rest_chime = self.udAllMeds.repeat_end_rest_chime1

         k_med_name = "k_med_name1"
         k_med_note = "k_med_note1"
         k_prep_time = "k_prep_time1"
         k_med_time = "k_med_time1"
         k_interval_time = "k_interval_time1"
         k_rest_time = "k_rest_time1"
         k_prep_chime = "k_prep_chime1"
         k_repeat_prep_chime = "k_repeat_prep_chime1"
         k_start_med_chime = "k_start_med_chime1"
         k_repeat_start_med_chime = "k_repeat_start_med_chime1"
         k_interval_chime = "k_interval_chime1"
         k_repeat_interval_chime = "k_repeat_interval_chime1"
         k_end_med_chime = "k_end_med_chime1"
         k_repeat_end_med_chime = "k_repeat_end_med_chime1"
         k_end_rest_chime = "k_end_rest_chime1"
         k_repeat_end_rest_chime = "k_repeat_end_rest_chime1"

      
      default:
         print("My default switch udId in compoareListToUdUpdateUd")
         durationPrepTime = self.allMeds.durationPrepTime0
         durationMedTime = self.allMeds.durationMedTime0
         durationIntervalTime  = self.allMeds.durationIntervalTime0
         durationRestTime = self.allMeds.durationRestTime0
         
         med_name = self.udAllMeds.med_name0
         med_note = self.udAllMeds.med_note0
         prep_time = self.udAllMeds.prep_time0
         med_time = self.udAllMeds.med_time0
         interval_time = self.udAllMeds.interval_time0
         rest_time = self.udAllMeds.rest_time0
         prep_chime = self.udAllMeds.prep_chime0
         repeat_prep_chime = self.udAllMeds.repeat_prep_chime0
         start_med_chime = self.udAllMeds.start_med_chime0
         repeat_start_med_chime = self.udAllMeds.repeat_start_med_chime0
         interval_chime = self.udAllMeds.interval_chime0
         repeat_interval_chime = self.udAllMeds.repeat_interval_chime0
         end_med_chime = self.udAllMeds.end_med_chime0
         repeat_end_med_chime = self.udAllMeds.repeat_end_med_chime0
         end_rest_chime = self.udAllMeds.end_rest_chime0
         repeat_end_rest_chime = self.udAllMeds.repeat_end_rest_chime0

         k_med_name = "k_med_name0"
         k_med_note = "k_med_note0"
         k_prep_time = "k_prep_time0"
         k_med_time = "k_med_time0"
         k_interval_time = "k_interval_time0"
         k_rest_time = "k_rest_time0"
         k_prep_chime = "k_prep_chime0"
         k_repeat_prep_chime = "k_repeat_prep_chime0"
         k_start_med_chime = "k_start_med_chime0"
         k_repeat_start_med_chime = "k_repeat_start_med_chime0"
         k_interval_chime = "k_interval_chime0"
         k_repeat_interval_chime = "k_repeat_interval_chime0"
         k_end_med_chime = "k_end_med_chime0"
         k_repeat_end_med_chime = "k_repeat_end_med_chime0"
         k_end_rest_chime = "k_end_rest_chime0"
         k_repeat_end_rest_chime = "k_repeat_end_rest_chime0"

      }
      
        if (self.allMeds.sessionList[sessnInx].med_name !=    med_name)
                   { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].med_name) , forKey: k_med_name)
                      print("OD:med_name & ud_med_name: \(self.allMeds.sessionList[sessnInx].med_name) \t \(   med_name)")

                   }
             if self.allMeds.sessionList[sessnInx].prep_chime !=    prep_chime
             { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].prep_chime) , forKey: k_prep_chime)
                   print("prep_chime_in & ud_prep_chime: \(self.allMeds.sessionList[sessnInx].prep_chime) \t \(   prep_chime)")}
            
             if (self.allMeds.sessionList[sessnInx].repeat_prep_chime !=    repeat_prep_chime)
                { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].repeat_prep_chime) , forKey: k_repeat_prep_chime)
                   print("OD:repeat_prep_chime & ud_repeat_prep_chime: \(self.allMeds.sessionList[sessnInx].repeat_prep_chime) \t \(   repeat_prep_chime)")
                }
                   
             if self.allMeds.sessionList[sessnInx].start_med_chime !=    start_med_chime
                { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].start_med_chime) , forKey: k_start_med_chime)
                      print("start_med_chime & ud_start_med_chime \(self.allMeds.sessionList[sessnInx].start_med_chime) \t \(   start_med_chime)")}
               
                if (self.allMeds.sessionList[sessnInx].repeat_start_med_chime !=    repeat_start_med_chime)
                   { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].repeat_start_med_chime) , forKey: k_repeat_start_med_chime)
                      print("OD:repeat_start_med_chime & ud_repeat_start_med_chime: \(self.allMeds.sessionList[sessnInx].repeat_start_med_chime) \t \(   repeat_start_med_chime)")
                   }
             
             
                    if self.allMeds.sessionList[sessnInx].interval_chime !=    interval_chime
                       { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].interval_chime) , forKey: k_interval_chime)
                             print("interval_chime & ud_interval_chime: \(self.allMeds.sessionList[sessnInx].interval_chime) \t \(   interval_chime)")}
                      
                       if (self.allMeds.sessionList[sessnInx].repeat_interval_chime !=    repeat_interval_chime)
                          { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].repeat_interval_chime) , forKey: k_repeat_interval_chime)
                             print("OD:repeat_interval_chime & ud_repeat_interval_chime: \(self.allMeds.sessionList[sessnInx].repeat_interval_chime) \t \(   repeat_interval_chime)")
                          }
                    
             
                    if self.allMeds.sessionList[sessnInx].end_med_chime !=    end_med_chime
                       { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].end_med_chime) , forKey: k_end_med_chime)
                             print("end_med_chime & ud_end_med_chime: \(self.allMeds.sessionList[sessnInx].end_med_chime) \t \(   end_med_chime)")}
                      
                       if (self.allMeds.sessionList[sessnInx].repeat_end_med_chime !=    repeat_end_med_chime)
                          { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].repeat_end_med_chime) , forKey: k_repeat_end_med_chime)
                             print("OD:repeat_end_med_chime & ud_repeat_end_med_chime: \(self.allMeds.sessionList[sessnInx].repeat_end_med_chime) \t \(   repeat_end_med_chime)")
                          }
                    
             
                    if self.allMeds.sessionList[sessnInx].end_rest_chime !=    end_rest_chime
                       { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].end_rest_chime) , forKey: k_end_rest_chime)
                             print("end_rest_chime & ud_end_rest_chime: \(self.allMeds.sessionList[sessnInx].end_rest_chime) \t \(   end_rest_chime)")}
                      
                       if (self.allMeds.sessionList[sessnInx].repeat_end_rest_chime !=    repeat_end_rest_chime)
                          { UserDefaults.standard.set((self.allMeds.sessionList[sessnInx].repeat_end_rest_chime) , forKey: k_repeat_end_rest_chime)
                             print("OD:repeat_end_rest_chime & ud_repeat_end_rest_chime: \(self.allMeds.sessionList[sessnInx].repeat_end_rest_chime) \t \(   repeat_end_rest_chime)")
                          }
                    
 
 
 if (durationPrepTime.toSeconds() !=    prep_time)
    { UserDefaults.standard.set(durationPrepTime.toSeconds() , forKey: k_prep_time)
       print("OD:prep_time & ud_prep_time: \(durationPrepTime.toSeconds() ) \t \(   prep_time)")

 }

 if (durationMedTime.toSeconds() !=    med_time)
    { UserDefaults.standard.set(durationMedTime.toSeconds() , forKey: k_med_time)
       print("OD:med_time & ud_med_time: \(durationMedTime.toSeconds() ) \t \(   med_time)")

 }
 if (durationIntervalTime.toSeconds() !=    interval_time)
    { UserDefaults.standard.set(durationIntervalTime.toSeconds() , forKey: k_interval_time)
       print("OD:interval_time & ud_interval_time: \(durationIntervalTime.toSeconds() ) \t \(   interval_time)")

 }
 if (durationRestTime.toSeconds() !=    rest_time)
    { UserDefaults.standard.set(durationRestTime.toSeconds() , forKey: k_rest_time)
       print("OD:rest_time & ud_rest_time: \(durationRestTime.toSeconds() ) \t \(   rest_time)")
 }
   }
    
   func updateListTime(sessnInx: Int) {
      var durationPrepTime: SelectedDuration
      var durationMedTime: SelectedDuration
      var durationIntervalTime: SelectedDuration
      var durationRestTime: SelectedDuration
      
      let udId: Int = self.allMeds.sessionList[sessnInx].udId
      switch udId {
      case 0:
         durationPrepTime = self.allMeds.durationPrepTime0
         durationMedTime = self.allMeds.durationMedTime0
         durationIntervalTime  = self.allMeds.durationIntervalTime0
         durationRestTime = self.allMeds.durationRestTime0
         case 1:
            durationPrepTime = self.allMeds.durationPrepTime1
            durationMedTime = self.allMeds.durationMedTime1
            durationIntervalTime  = self.allMeds.durationIntervalTime1
            durationRestTime = self.allMeds.durationRestTime1

         
         default:
            print("My default switch udId in updateList...")

            durationPrepTime = self.allMeds.durationPrepTime0
            durationMedTime = self.allMeds.durationMedTime0
            durationIntervalTime  = self.allMeds.durationIntervalTime0
            durationRestTime = self.allMeds.durationRestTime0
      }
      
self.allMeds.sessionList[sessnInx].prep_time = durationPrepTime.toSeconds()
      self.allMeds.sessionList[sessnInx].med_time = durationMedTime.toSeconds()
      self.allMeds.sessionList[sessnInx].interval_time = durationIntervalTime.toSeconds()
      self.allMeds.sessionList[sessnInx].rest_time = durationRestTime.toSeconds()
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
//         self.allMeds.sessionList[self.sessnInx].prep_time = self.allMeds.durationPrepTime0.toSeconds()
//         self.allMeds.sessionList[self.sessnInx].med_time = self.allMeds.durationMedTime0.toSeconds()
//         self.allMeds.sessionList[self.sessnInx].interval_time = self.allMeds.durationIntervalTime0.toSeconds()
//         self.allMeds.sessionList[self.sessnInx].rest_time = self.allMeds.durationRestTime0.toSeconds()

         self.updateListTime(sessnInx: self.sessnInx)
         
         self.allMeds.sessionList[self.sessnInx].total_med_time = self.allMeds.sessionList[self.sessnInx].prep_time + self.allMeds.sessionList[self.sessnInx].med_time + self.allMeds.sessionList[self.sessnInx].rest_time
         
         self.compareListToUdUpdateUd(sessnInx: self.sessnInx)
         
           

                                                           }

    }
}
