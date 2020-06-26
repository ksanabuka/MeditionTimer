//
//  udClass.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 6/16/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//

import Foundation


class udUserMeditationSettings: ObservableObject {

   var prep_time1: Int = UserDefaults.standard.integer(forKey: "k_prep_time1")  {
       didSet { UserDefaults.standard.set(self.prep_time1, forKey: "k_prep_time1") }
   }

   
   var med_time1: Int = UserDefaults.standard.integer(forKey: "k_med_time1")  {
       didSet { UserDefaults.standard.set(self.med_time1, forKey: "k_med_time1") }
   }
   var interval_time1: Int = UserDefaults.standard.integer(forKey: "k_interval_time1")  {
       didSet { UserDefaults.standard.set(self.interval_time1, forKey: "k_interval_time1") }
   }
   var rest_time1: Int = UserDefaults.standard.integer(forKey: "k_rest_time1")  {
       didSet { UserDefaults.standard.set(self.rest_time1, forKey: "k_rest_time1") }
   }

   
var med_name1: String = UserDefaults.standard.string(forKey: "k_med_name1") ?? "My super meditation"  {
    didSet { UserDefaults.standard.set(self.med_name1, forKey: "k_med_name1") }
}
   
   var med_note1: String = UserDefaults.standard.string(forKey: "k_med_note1") ?? "My Meditation Note"  {
       didSet { UserDefaults.standard.set(self.med_note1, forKey: "k_med_note1") }
   }

    
var prep_chime1: Int = UserDefaults.standard.integer(forKey: "k_prep_chime1") {
    didSet { UserDefaults.standard.set(self.prep_chime1, forKey: "k_prep_chime1") }
   
}
   
   
   var repeat_prep_chime1: Int = UserDefaults.standard.integer(forKey: "k_repeat_prep_chime1")  {
       didSet { UserDefaults.standard.set(self.repeat_prep_chime1, forKey: "k_repeat_prep_chime1") }
   }


var start_med_chime1: Int = UserDefaults.standard.integer(forKey: "k_start_med_chime1") {
    didSet { UserDefaults.standard.set(self.start_med_chime1, forKey: "k_start_med_chime1") }
}

var repeat_start_med_chime1: Int = UserDefaults.standard.integer(forKey: "k_repeat_start_med_chime1")  {
    didSet { UserDefaults.standard.set(self.repeat_start_med_chime1, forKey: "k_repeat_start_med_chime1") }
}

    var interval_chime1: Int = UserDefaults.standard.integer(forKey: "k_interval_chime1") {
        didSet { UserDefaults.standard.set(self.interval_chime1, forKey: "k_interval_chime1") }
    }

    var repeat_interval_chime1: Int = UserDefaults.standard.integer(forKey: "k_repeat_interval_chime1")  {
        didSet { UserDefaults.standard.set(self.repeat_interval_chime1, forKey: "k_repeat_interval_chime1") }
    }

   var end_med_chime1: Int = UserDefaults.standard.integer(forKey: "k_end_med_chime1") {
          didSet { UserDefaults.standard.set(self.end_med_chime1, forKey: "k_end_med_chime1") }
      }

      var repeat_end_med_chime1: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_med_chime1")  {
          didSet { UserDefaults.standard.set(self.repeat_end_med_chime1, forKey: "k_repeat_end_med_chime1") }
      }

   var end_rest_chime1: Int = UserDefaults.standard.integer(forKey: "k_end_rest_chime1") {
       didSet { UserDefaults.standard.set(self.end_rest_chime1, forKey: "k_end_rest_chime1") }
   }

   var repeat_end_rest_chime1: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_rest_chime1")  {
       didSet { UserDefaults.standard.set(self.repeat_end_rest_chime1, forKey: "k_repeat_end_rest_chime1") }
   }
   
   
   
   
   //2 meditation
   
   var prep_time2: Int = UserDefaults.standard.integer(forKey: "k_prep_time2")  {
          didSet { UserDefaults.standard.set(self.prep_time2, forKey: "k_prep_time2") }
      }

      
      var med_time2: Int = UserDefaults.standard.integer(forKey: "k_med_time2")  {
          didSet { UserDefaults.standard.set(self.med_time2, forKey: "k_med_time2") }
      }
      var interval_time2: Int = UserDefaults.standard.integer(forKey: "k_interval_time2")  {
          didSet { UserDefaults.standard.set(self.interval_time2, forKey: "k_interval_time2") }
      }
      var rest_time2: Int = UserDefaults.standard.integer(forKey: "k_rest_time2")  {
          didSet { UserDefaults.standard.set(self.rest_time2, forKey: "k_rest_time2") }
      }

      
   var med_name2: String = UserDefaults.standard.string(forKey: "k_med_name2") ?? "My super meditation"  {
       didSet { UserDefaults.standard.set(self.med_name2, forKey: "k_med_name2") }
   }
      
      var med_note2: String = UserDefaults.standard.string(forKey: "k_med_note2") ?? "My Meditation Note"  {
          didSet { UserDefaults.standard.set(self.med_note2, forKey: "k_med_note2") }
      }

       
   var prep_chime2: Int = UserDefaults.standard.integer(forKey: "k_prep_chime2") {
       didSet { UserDefaults.standard.set(self.prep_chime2, forKey: "k_prep_chime2") }
      
   }
      
      
      var repeat_prep_chime2: Int = UserDefaults.standard.integer(forKey: "k_repeat_prep_chime2")  {
          didSet { UserDefaults.standard.set(self.repeat_prep_chime2, forKey: "k_repeat_prep_chime2") }
      }


   var start_med_chime2: Int = UserDefaults.standard.integer(forKey: "k_start_med_chime2") {
       didSet { UserDefaults.standard.set(self.start_med_chime2, forKey: "k_start_med_chime2") }
   }

   var repeat_start_med_chime2: Int = UserDefaults.standard.integer(forKey: "k_repeat_start_med_chime2")  {
       didSet { UserDefaults.standard.set(self.repeat_start_med_chime2, forKey: "k_repeat_start_med_chime2") }
   }

       var interval_chime2: Int = UserDefaults.standard.integer(forKey: "k_interval_chime2") {
           didSet { UserDefaults.standard.set(self.interval_chime2, forKey: "k_interval_chime2") }
       }

       var repeat_interval_chime2: Int = UserDefaults.standard.integer(forKey: "k_repeat_interval_chime2")  {
           didSet { UserDefaults.standard.set(self.repeat_interval_chime2, forKey: "k_repeat_interval_chime2") }
       }

      var end_med_chime2: Int = UserDefaults.standard.integer(forKey: "k_end_med_chime2") {
             didSet { UserDefaults.standard.set(self.end_med_chime2, forKey: "k_end_med_chime2") }
         }

         var repeat_end_med_chime2: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_med_chime2")  {
             didSet { UserDefaults.standard.set(self.repeat_end_med_chime2, forKey: "k_repeat_end_med_chime2") }
         }

      var end_rest_chime2: Int = UserDefaults.standard.integer(forKey: "k_end_rest_chime2") {
          didSet { UserDefaults.standard.set(self.end_rest_chime2, forKey: "k_end_rest_chime2") }
      }

      var repeat_end_rest_chime2: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_rest_chime2")  {
          didSet { UserDefaults.standard.set(self.repeat_end_rest_chime2, forKey: "k_repeat_end_rest_chime2") }
      }
   
}
