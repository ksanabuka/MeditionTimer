//
//  sessionClass.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 6/15/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Session: Identifiable {
    var id = UUID()
    var name: String
    var note: String
    var duration: Double
   var medSession: [String : Any] = ["id" : UUID(), "name" : "", "note" : "", "duration" : 0.0]
}

struct SessionRow1: View {
var session: Sessn

var body: some View {
    HStack {
        VStack(alignment: .leading) {
            Text(session.med_name)
            Text(session.med_note).font(.subheadline).foregroundColor(.gray)
        }
        Spacer()
//
//      (session.durationPrepTime.selectedHour < 9 ? Text("0\(session.durationPrepTime.selectedHour):"): Text("\(session.durationPrepTime.selectedHour):")) + (session.durationPrepTime.selectedMin < 9 ? Text("0\(session.durationPrepTime.selectedMin):"): Text("\(session.durationPrepTime.selectedMin):"))
//      + (session.durationPrepTime.selectedSecond < 9 ? Text("0\(session.durationPrepTime.selectedSecond)"): Text("\(session.durationPrepTime.selectedSecond)"))
      
//        Text(String(format: "%.1f mins", session.duration))
    }
}
}



struct SessionRow: View {
var session: UserMedSets

var body: some View {
    HStack {
        VStack(alignment: .leading) {
            Text(session.med_name)
            Text(session.note).font(.subheadline).foregroundColor(.gray)
        }
        Spacer()
      
      (session.durationPrepTime.selectedHour < 9 ? Text("0\(session.durationPrepTime.selectedHour):"): Text("\(session.durationPrepTime.selectedHour):")) + (session.durationPrepTime.selectedMin < 9 ? Text("0\(session.durationPrepTime.selectedMin):"): Text("\(session.durationPrepTime.selectedMin):"))
      + (session.durationPrepTime.selectedSecond < 9 ? Text("0\(session.durationPrepTime.selectedSecond)"): Text("\(session.durationPrepTime.selectedSecond)"))
      
//        Text(String(format: "%.1f mins", session.duration))
    }
}
}


class UserMedSets: ObservableObject, Identifiable {
// var id = Date().currentTimeMillis()
   var id: Int
   init(id: Int){
      self.id = id
   }
@Published var med_name: String = "My Meditation Name"
@Published var total_med_time: Int = 12
@Published var note: String = "start it in the morining"
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
