//
//  avMediaClass.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 6/19/20.
//  Copyright © 2020 Oksana Buksha. All rights reserved.
//

import AVFoundation
import SwiftUI

struct MyAVPlayer {
   
    var chimeName: Int
  var  repeatPlay: Int
   @Binding var player: AVAudioPlayer!
   
   
   func playChimeVibrate() {
      let chimeName: Int = self.chimeName
      let repeatPlay: Int = self.repeatPlay
      var name: String
      var type: String
      switch chimeName {
      case 0:
         name = ""
         type = ""
      case 1:
      name = "bells"
      type = "mp3"
      case 2:
         name = "bowl"
         type = "mp3"
      case 3:
         name = "clap"
         type = "wav"
      case 4:
         name = "cymbal"
         type = "wav"
      case 5:
         name = "wooden"
         type = "wav"
      case 6:
         name = "bells2"
         type = "mp3"
      
      default:
         name = ""
         type = ""
      }
   if (name != "")
   {
         let url = Bundle.main.path(forResource: name, ofType: type)
      self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
      self.player.numberOfLoops = repeatPlay
      self.player.play()
       //  MusicDeviceComponent.vibrate()
      
      }
   }

}
