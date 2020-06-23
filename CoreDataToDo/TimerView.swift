//
//  TimerView.swift
//  CoreDataToDo
//
//  Created by Oksana Buksha on 12/9/19.
//  Copyright © 2019 Oksana Buksha. All rights reserved.
//

import SwiftUI
import AVKit
import Foundation
import AVFoundation
import Combine

struct TimerView: View {
    

    @Environment(\.managedObjectContext) var managedObjectContext
    @State var paused = true
    @EnvironmentObject var userMedSets: UserMedSets
   
   @EnvironmentObject var allSession: DataRep

   


    @ObservedObject var udUserMedSets = udUserMeditationSettings()
      
   @State var firstLaunch = 1
    
    
    
    
   
    let timer2 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var player: AVAudioPlayer!
   @State var medPart = ""
   @State var counter = 0
   @State var intervalCounter = 0
   @State var myInervalCounter = 0
    
//   func playChimeVibrate(chimeName: Int, repeatPlay: Int) {
//
//      var name: String
//      var type: String
//      switch chimeName {
//      case 0:
//         name = ""
//         type = ""
//      case 1:
//      name = "bells"
//      type = "mp3"
//      case 2:
//         name = "bowl"
//         type = "mp3"
//      case 3:
//         name = "clap"
//         type = "wav"
//      case 4:
//         name = "cymbal"
//         type = "wav"
//      case 5:
//         name = "wooden"
//         type = "wav"
//      case 6:
//         name = "bells2"
//         type = "mp3"
//
//      default:
//         name = ""
//         type = ""
//      }
//   if (name != "")
//   {
//         print(name)
//         let url = Bundle.main.path(forResource: name, ofType: type)
//            self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
//         self.player.numberOfLoops = repeatPlay
//            self.player.play()
//       //  MusicDeviceComponent.vibrate()
//
//      }
//   }
   
   
var body: some View {
NavigationView {
    VStack {
      
        Spacer()
        VStack(alignment: .center) {
            Group {
               Text(self.allSession.sessionList[0].med_name).font(.largeTitle).multilineTextAlignment(.center).foregroundColor(.white).padding()


                  
                    VStack {
                     Text(giveSessionPart(userMedSets: self.allSession.sessionList[0], counter: self.counter)).multilineTextAlignment(.trailing)
                        

//                     Text("Med_Name is \(self.allSession.sessionList[0].med_name)")
//                     Text("totalMeditationTime...: \(self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time)!")

                    }.foregroundColor(Color.white)
                
    VStack {
      Text("\(countDownString(seconds: self.allSession.sessionList[0].total_med_time))").onReceive(timer2){ _ in
         
         if (self.counter >= 0 && self.paused == false && self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time > 0 && self.counter < self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time)
         {
         if (self.counter == 0 && self.paused == false && self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time > 0)
         {
            print("beginning of non empty session at c: \(self.counter) \t cds: \(self.allSession.sessionList[0].total_med_time)")
         }
         if (self.counter == 0 && self.allSession.sessionList[0].prep_time != 0)
         {
            print(" beginning of Prep Time at c: \(self.counter) \t cds: \(self.allSession.sessionList[0].total_med_time)")
            
            MyAVPlayer(chimeName: self.allSession.sessionList[0].prep_chime, repeatPlay: self.allSession.sessionList[0].repeat_prep_chime, player: self.$player).playChimeVibrate()

//            self.playChimeVibrate(chimeName: self.allSession.sessionList[0].prep_chime, repeatPlay: self.allSession.sessionList[0].repeat_prep_chime)
         }
                  
         if (self.counter == self.allSession.sessionList[0].prep_time && self.allSession.sessionList[0].med_time != 0) {
            self.myInervalCounter = 0
            print(" beginning med Time at c: \(self.counter) \t cds: \(self.allSession.sessionList[0].total_med_time)")
           
            
            MyAVPlayer(chimeName: self.allSession.sessionList[0].start_med_chime, repeatPlay: self.allSession.sessionList[0].repeat_start_med_chime, player: self.$player).playChimeVibrate()

            }
           if inMeditationPart(userMedSets: self.allSession.sessionList[0], counter: self.counter)
           {
            print("In med Session at c: \(self.counter) \t cds: \(self.allSession.sessionList[0].total_med_time)")
            if (self.allSession.sessionList[0].interval_time > 0) {
               if self.myInervalCounter == self.allSession.sessionList[0].interval_time && self.counter < self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time {
                  print("BUUM In med Session at c: \(self.counter) \t cds: \(self.allSession.sessionList[0].total_med_time)")
                 
                  
                  MyAVPlayer(chimeName: self.allSession.sessionList[0].interval_chime, repeatPlay: self.allSession.sessionList[0].repeat_interval_chime, player: self.$player).playChimeVibrate()

                  
                  self.myInervalCounter = 0
               }
               self.myInervalCounter += 1
            }}
            if (self.counter == self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time && self.allSession.sessionList[0].rest_time != 0) {
               print(" beginning Rest Time at c: \(self.counter) \t cds: \(self.allSession.sessionList[0].total_med_time)")
              
               MyAVPlayer(chimeName: self.allSession.sessionList[0].end_med_chime, repeatPlay: self.allSession.sessionList[0].repeat_end_med_chime, player: self.$player).playChimeVibrate()

            }
            
            self.counter += 1
            self.allSession.sessionList[0].total_med_time -= 1
         }
         
         else if (self.counter == self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time && self.paused == false && (self.allSession.sessionList[0].rest_time != 0 || self.allSession.sessionList[0].med_time != 0 || self.allSession.sessionList[0].prep_time != 0))
         {
            print(" End of nonempty session at c: \(self.counter) \t cds: \(self.allSession.sessionList[0].total_med_time)")
       
            MyAVPlayer(chimeName: self.allSession.sessionList[0].end_rest_chime, repeatPlay: self.allSession.sessionList[0].repeat_end_rest_chime, player: self.$player).playChimeVibrate()

                  
            
            self.counter = 0
            self.myInervalCounter = 0

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
               self.paused = true
      self.allSession.sessionList[0].total_med_time =         self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time
            }}
         
         self.medPart = giveSessionPart(userMedSets: self.allSession.sessionList[0], counter: self.counter)

         
         
         
        }
            .font(.largeTitle)
            .foregroundColor(Color.white)
     
        Spacer()
        HStack {
            Button(action: {

               
                self.paused.toggle()
            }){
                Image(systemName: paused ? "play.circle" : "pause.circle")
                .resizable()
                           .scaledToFit()
                           .frame(width: 100, height: 100)
                               .clipped()
                               .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)

            }
            Spacer()
        Image(systemName: "stop.circle").resizable().scaledToFit().frame(width: 100, height: 100)
            .clipped().foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .gesture(TapGesture().onEnded() {
                    self.paused = true

               self.allSession.sessionList[0].total_med_time = self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time
               self.counter = 0
               self.medPart = giveSessionPart(userMedSets: self.allSession.sessionList[0], counter: self.counter)


            })
                    }

                }
            }
            .padding(.all)

        }
        .frame(width: 280.0, height: 550.0)
        .background(RoundedRectangle(cornerRadius: CGFloat(3.0)).opacity(0.3))
        
        Spacer()
    }
        .background(Image("default").resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all))
    .background(NavigationConfigurator { nc in
        nc.navigationBar.barTintColor =  UIColor(red: 116/255, green: 77/255, blue: 49/255, alpha: 1.0)
        nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
    })
//    .navigationBarTitle(Text("Session name"), displayMode: .inline)
                   
                   .foregroundColor(Color(red: 139/255, green: 125/255, blue: 105/255))
// 3                .navigationBarItems(leading:
//                     NavigationLink(
//                        destination: ContentView()
//                           .navigationBarTitle(Text("Settings"), displayMode: .inline)
//                            .navigationBarItems(trailing:
//                           NavigationLink("Sponsor", destination: ToDoItemView())
//                       )
//                       )
//                           {
//                             Image(systemName: "gear")
//                             .resizable()
//                             .scaledToFit()
//                             .frame(width: 40, height: 40)
//                             .clipped()
//
//                 }, trailing:
//                    NavigationLink(
//                             destination: EditMeditation()
//                                .navigationBarTitle(Text("Edit Meditation"), displayMode: .inline)
//
//                            )
//                                {
//                                  Text("Edit")
//
//                      })
}
.onAppear {
//   print("On Appear!!!\n\n")
    

//   if (self.firstLaunch == 1) {
//      self.firstLaunch = 0
//      print("On appear - 1 launch")
//      self.userMedSets.med_time = self.udUserMedSets.med_time
//      self.userMedSets.interval_time = self.udUserMedSets.interval_time
//      self.userMedSets.rest_time = self.udUserMedSets.rest_time
//      self.userMedSets.prep_time = self.udUserMedSets.prep_time
//
//      self.userMedSets.total_med_time = self.userMedSets.prep_time + self.userMedSets.med_time + self.userMedSets.rest_time
//
//
//       self.userMedSets.med_name = self.udUserMedSets.med_name
//
//      self.userMedSets.prep_chime = self.udUserMedSets.prep_chime
//      self.userMedSets.repeat_prep_chime = self.udUserMedSets.repeat_prep_chime
//
//
//      self.userMedSets.start_med_chime = self.udUserMedSets.start_med_chime
//      self.userMedSets.repeat_start_med_chime = self.udUserMedSets.repeat_start_med_chime
//
//      self.userMedSets.interval_chime = self.udUserMedSets.interval_chime
//      self.userMedSets.repeat_interval_chime = self.udUserMedSets.repeat_interval_chime
//
//      self.userMedSets.end_med_chime = self.udUserMedSets.end_med_chime
//      self.userMedSets.repeat_end_med_chime = self.udUserMedSets.repeat_end_med_chime
//
//      self.userMedSets.end_rest_chime = self.udUserMedSets.end_rest_chime
//      self.userMedSets.repeat_end_rest_chime = self.udUserMedSets.repeat_end_rest_chime
//
//      self.userMedSets.durationPrepTime.selectedHour = self.udUserMedSets.prep_time / 3600
//         self.userMedSets.durationPrepTime.selectedSecond = self.udUserMedSets.prep_time % 60
//         self.userMedSets.durationPrepTime.selectedMin = self.udUserMedSets.prep_time / 60 % 60
//
//      self.userMedSets.durationMedTime.selectedHour = self.udUserMedSets.med_time / 3600
//      self.userMedSets.durationMedTime.selectedSecond = self.udUserMedSets.med_time % 60
//      self.userMedSets.durationMedTime.selectedMin = self.udUserMedSets.med_time / 60 % 60
//
//      self.userMedSets.durationIntervalTime.selectedHour = self.udUserMedSets.interval_time / 3600
//      self.userMedSets.durationIntervalTime.selectedSecond = self.udUserMedSets.interval_time % 60
//      self.userMedSets.durationIntervalTime.selectedMin = self.udUserMedSets.interval_time / 60 % 60
//
//      self.userMedSets.durationRestTime.selectedHour = self.udUserMedSets.rest_time / 3600
//      self.userMedSets.durationRestTime.selectedSecond = self.udUserMedSets.rest_time % 60
//      self.userMedSets.durationRestTime.selectedMin = self.udUserMedSets.rest_time / 60 % 60
//
//
//   }
//   else
//   {
//      print("On appear - NOT 1 launch")
//
//   }
   self.intervalCounter = (self.allSession.sessionList[0].interval_time > 0 && self.allSession.sessionList[0].interval_time < self.allSession.sessionList[0].med_time) ? self.allSession.sessionList[0].med_time / self.allSession.sessionList[0].interval_time : 0
   
   self.allSession.sessionList[0].total_med_time = self.allSession.sessionList[0].prep_time + self.allSession.sessionList[0].med_time + self.allSession.sessionList[0].rest_time

   

//
//    print("OA:med_name <- ud_med_name: \(self.userMedSets.med_name) \t \(self.udUserMedSets.med_name)")
//   print("OA:prep_time  <-  ud_prep_time: \(self.userMedSets.prep_time) \t \(self.udUserMedSets.prep_time)")
//   print("OA:med_time  <-  ud_med_time: \(self.userMedSets.med_time) \t \(self.udUserMedSets.med_time)")
//   print("OA:interval_time  <-  ud_interval_time: \(self.userMedSets.interval_time) \t \(self.udUserMedSets.interval_time)")
//   print("OA:rest_time  <-  ud_rest_time: \(self.userMedSets.rest_time) \t \(self.udUserMedSets.rest_time)")
//
//   print("OA:prep_chime  <-  ud_prep_chime: \(self.userMedSets.prep_chime) \t \(self.udUserMedSets.prep_chime)")
//
//    print("OA:repeat_prep_chime  <-  ud_repeat_prep_chime: \(self.userMedSets.repeat_prep_chime) \t \(self.udUserMedSets.repeat_prep_chime)")

    }

}
}


struct TimerView_Previews: PreviewProvider {
static var previews: some View {
TimerView()
}
}
