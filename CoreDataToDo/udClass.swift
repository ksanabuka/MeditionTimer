//
//  udClass.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 6/16/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//

import Foundation


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
   
   var med_note: String = UserDefaults.standard.string(forKey: "k_med_note") ?? "My Meditation Note"  {
       didSet { UserDefaults.standard.set(self.med_note, forKey: "k_med_note") }
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
