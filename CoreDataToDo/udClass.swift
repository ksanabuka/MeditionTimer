//
//  udClass.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 6/16/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//

import Foundation


class udUserMeditationSettings: ObservableObject {

   var prep_time0: Int = UserDefaults.standard.integer(forKey: "k_prep_time0")  {
       didSet { UserDefaults.standard.set(self.prep_time0, forKey: "k_prep_time0") }
   }

   
   var med_time0: Int = UserDefaults.standard.integer(forKey: "k_med_time0")  {
       didSet { UserDefaults.standard.set(self.med_time0, forKey: "k_med_time0") }
   }
   var interval_time0: Int = UserDefaults.standard.integer(forKey: "k_interval_time0")  {
       didSet { UserDefaults.standard.set(self.interval_time0, forKey: "k_interval_time0") }
   }
   var rest_time0: Int = UserDefaults.standard.integer(forKey: "k_rest_time0")  {
       didSet { UserDefaults.standard.set(self.rest_time0, forKey: "k_rest_time0") }
   }

   
var med_name0: String = UserDefaults.standard.string(forKey: "k_med_name0") ?? "My super meditation"  {
    didSet { UserDefaults.standard.set(self.med_name0, forKey: "k_med_name0") }
}
   
   var med_note0: String = UserDefaults.standard.string(forKey: "k_med_note0") ?? "My Meditation Note"  {
       didSet { UserDefaults.standard.set(self.med_note0, forKey: "k_med_note0") }
   }

    
var prep_chime0: Int = UserDefaults.standard.integer(forKey: "k_prep_chime0") {
    didSet { UserDefaults.standard.set(self.prep_chime0, forKey: "k_prep_chime0") }
   
}
   
   
   var repeat_prep_chime0: Int = UserDefaults.standard.integer(forKey: "k_repeat_prep_chime0")  {
       didSet { UserDefaults.standard.set(self.repeat_prep_chime0, forKey: "k_repeat_prep_chime0") }
   }


var start_med_chime0: Int = UserDefaults.standard.integer(forKey: "k_start_med_chime0") {
    didSet { UserDefaults.standard.set(self.start_med_chime0, forKey: "k_start_med_chime0") }
}

var repeat_start_med_chime0: Int = UserDefaults.standard.integer(forKey: "k_repeat_start_med_chime0")  {
    didSet { UserDefaults.standard.set(self.repeat_start_med_chime0, forKey: "k_repeat_start_med_chime0") }
}

    var interval_chime0: Int = UserDefaults.standard.integer(forKey: "k_interval_chime0") {
        didSet { UserDefaults.standard.set(self.interval_chime0, forKey: "k_interval_chime0") }
    }

    var repeat_interval_chime0: Int = UserDefaults.standard.integer(forKey: "k_repeat_interval_chime0")  {
        didSet { UserDefaults.standard.set(self.repeat_interval_chime0, forKey: "k_repeat_interval_chime0") }
    }

   var end_med_chime0: Int = UserDefaults.standard.integer(forKey: "k_end_med_chime0") {
          didSet { UserDefaults.standard.set(self.end_med_chime0, forKey: "k_end_med_chime0") }
      }

      var repeat_end_med_chime0: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_med_chime0")  {
          didSet { UserDefaults.standard.set(self.repeat_end_med_chime0, forKey: "k_repeat_end_med_chime0") }
      }

   var end_rest_chime0: Int = UserDefaults.standard.integer(forKey: "k_end_rest_chime0") {
       didSet { UserDefaults.standard.set(self.end_rest_chime0, forKey: "k_end_rest_chime0") }
   }

   var repeat_end_rest_chime0: Int = UserDefaults.standard.integer(forKey: "k_repeat_end_rest_chime0")  {
       didSet { UserDefaults.standard.set(self.repeat_end_rest_chime0, forKey: "k_repeat_end_rest_chime0") }
   }
   
   
   
   
   //2 meditation
   
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
   
}
