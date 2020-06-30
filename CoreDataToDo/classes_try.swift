//
//  classes_try.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 6/16/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//
import Foundation
import SwiftUI
import Combine

import Foundation

struct SessnUI: Hashable, Codable, Identifiable {
   var id: Int
//   var med_name: String
//   var total_med_time: Int
//   var med_note: String

}

struct Sessn: Hashable, Codable, Identifiable {
   var active: Int
   var uiId: Int
   var udId: Int
    var id: Int
    var med_name: String
    var total_med_time: Int
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

}
func toSessionListData() -> [Sessn]{
   
   return [Sessn(active: 1, uiId: 2, udId: 0, id: 0, med_name: "ses1", total_med_time: 13, med_note: "note1", prep_time: 3, med_time: 9, interval_time: 3, rest_time: 1, prep_chime: 1, repeat_prep_chime: 2, start_med_chime: 2, repeat_start_med_chime: 1, interval_chime: 2, repeat_interval_chime: 2, end_med_chime: 2, repeat_end_med_chime: 2, end_rest_chime: 2, repeat_end_rest_chime: 2), Sessn(active: 1, uiId: 3, udId: 1, id: 1, med_name: "ses2", total_med_time: 13, med_note: "note2", prep_time: 3, med_time: 9, interval_time: 3, rest_time: 1, prep_chime: 1, repeat_prep_chime: 2, start_med_chime: 2, repeat_start_med_chime: 1, interval_chime: 2, repeat_interval_chime: 2, end_med_chime: 2, repeat_end_med_chime: 2, end_rest_chime: 2, repeat_end_rest_chime: 2)]
}
func toSessionListDataUI() -> [SessnUI]{
   return [SessnUI(id: 2), SessnUI(id: 3)]
}

class DataRep: ObservableObject  {
   @ObservedObject var durationPrepTime0 = SelectedDuration()
   @ObservedObject var durationMedTime0 = SelectedDuration()
   @ObservedObject var durationIntervalTime0 = SelectedDuration()
   @ObservedObject var durationRestTime0 = SelectedDuration()
   @ObservedObject var durationPrepTime1 = SelectedDuration()
   @ObservedObject var durationMedTime1 = SelectedDuration()
   @ObservedObject var durationIntervalTime1 = SelectedDuration()
   @ObservedObject var durationRestTime1 = SelectedDuration()

    @Published var sessionList : [Sessn] = toSessionListData()
    var sessionListUI : [SessnUI] = toSessionListDataUI()

   func getIntParametrByUIid(uiId: Int, requiredParam: String) -> Int
   {
      var selectedSessionsArray: [Sessn]
      
      switch requiredParam {
         case "indexInList":
            return (sessionList.firstIndex(where: {$0.uiId == uiId}) ?? -1)
        
         case "durationRestTime":
               selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
               let udId: Int = selectedSessionsArray[0].udId
               switch udId {
               case 0:
                 return DataRep().durationRestTime0.toSeconds()
               case 1:
                 return DataRep().durationRestTime1.toSeconds()
               default:
                 print ("My default -1 at getIntParametrByUIid")
                 return (-1)
               }

         
      case "durationIntervalTime":
            selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
            let udId: Int = selectedSessionsArray[0].udId
            switch udId {
            case 0:
              return DataRep().durationIntervalTime0.toSeconds()
            case 1:
              return DataRep().durationIntervalTime1.toSeconds()
            default:
              print ("My default -1 at getIntParametrByUIid")
              return (-1)
            }

         
 case "durationPrepTime":
    selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
    let udId: Int = selectedSessionsArray[0].udId
    switch udId {
    case 0:
      return DataRep().durationPrepTime0.toSeconds()
    case 1:
      return DataRep().durationPrepTime1.toSeconds()
    default:
      print ("My default -1 at getIntParametrByUIid")
      return (-1)
    }
    case "durationMedTime":
       selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
       let udId: Int = selectedSessionsArray[0].udId
       switch udId {
       case 0:
         return DataRep().durationMedTime0.toSeconds()
       case 1:
         return DataRep().durationMedTime1.toSeconds()
       default:
         print ("My default -1 at getIntParametrByUIid")
         return (-1)
       }


         
         case "active":
            selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
           return selectedSessionsArray[0].active

         case "uiId":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].uiId


         case "udId":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].udId


          case "id":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].id


          case "total_med_time":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].total_med_time


          case "prep_time":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].prep_time

          case "med_time":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].med_time

          case "interval_time":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].interval_time

          case "rest_time":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].rest_time

          case "prep_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].prep_chime

          case "repeat_prep_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].repeat_prep_chime

          case "start_med_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].start_med_chime

          case "repeat_start_med_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].repeat_start_med_chime

          case "interval_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].interval_chime

          case "repeat_interval_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].repeat_interval_chime

          case "end_med_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].end_med_chime

          case "repeat_end_med_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].repeat_end_med_chime

          case "end_rest_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].end_rest_chime

          case "repeat_end_rest_chime":
          selectedSessionsArray = sessionList.filter({$0.uiId == uiId})
         return selectedSessionsArray[0].repeat_end_rest_chime

          default:
            print ("Nonexisting default case in getIntParametrByUIid")
            return -1


      }
      
   }
   
 }
