//
//  diff.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 1/31/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//


import SwiftUI
import AVKit
import Foundation
import AVFoundation

extension Date {
    func currentTimeMillis() -> Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
}



extension MusicDeviceComponent {
    static func vibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}

func computeTotalMedTime (prep_time: Int, med_time: Int, rest_time:Int) -> Int {
   return prep_time + med_time + rest_time
}

func giveSessionPart(userMedSets: Sessn, counter: Int ) -> String {
   var name = ""
   if (counter == 0 || counter > userMedSets.prep_time + userMedSets.med_time + userMedSets.rest_time) {
      if userMedSets.prep_time > 0 {name = "Preparation Time"}
      else if userMedSets.med_time > 0 && userMedSets.prep_time == 0 {name = "Meditation Time"}
      else if userMedSets.med_time == 0 && userMedSets.prep_time == 0 && userMedSets.rest_time > 0 {name = "Rest Time"}
   }
   else if (0 < counter  && counter < userMedSets.prep_time) {name = "Preparation Time"}
   else if (counter >= userMedSets.prep_time && counter < userMedSets.prep_time + userMedSets.med_time) {name = "Meditation Time"}
   else if (counter >= userMedSets.prep_time + userMedSets.med_time && counter <= userMedSets.prep_time + userMedSets.med_time + userMedSets.rest_time) {name = "Rest Time"}

   return name
}
// 3661 -Ю 1-1-1
func countDownString(seconds: Int) -> String {
return (String(format: "%02d:%02d:%02d", seconds / 3600, seconds / 60, seconds % 60))
}

func inMeditationPart(userMedSets: Sessn, counter: Int ) -> Bool {
   return (userMedSets.med_time != 0 && counter >= userMedSets.prep_time && counter <= userMedSets.prep_time + userMedSets.med_time) ? true : false
}


struct NavigationConfigurator: UIViewControllerRepresentable {
var configure: (UINavigationController) -> Void = { _ in }

func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
UIViewController()
}
func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
if let nc = uiViewController.navigationController {
    self.configure(nc)
}
}

}


