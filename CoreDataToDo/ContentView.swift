//
//  ContentView.swift
//  timer2
//
//  Created by Oksana Buksha on 11/25/19.
//  Copyright © 2019 Oksana Buksha. All rights reserved.
//


//            Text("")
//            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//            .background(Color(red: 100/255, green: 100/255, blue: 105/255))
//            .edgesIgnoringSafeArea(.all)


import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Some text")
    }
}


struct ContentView: View {
        
    
       @State var allowShaking = true
        @State var autolock = false
     
        @State var isShowingImagePicker = false
    @State var imageInBlackBox =  UIImage(named: "default")!.imageWithColor(tintColor: UIColor(red: 0, green: 165, blue: 250, alpha: 0.5))
    
    
    var body: some View {
        

//        NavigationView {
            List {
                NavigationLink(destination: MyToDo()){
                    HStack {
                        Image(systemName: "bag.badge.plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .clipped()
                        Text("To Do's")
                    }
                }
                
                NavigationLink(destination: HomeView()){
                    HStack {
                        Image(systemName: "exclamationmark.bubble")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .clipped()
                        Text("Reminders")
                    }
                }
                Divider()
                HStack {

                    Image(uiImage: imageInBlackBox)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .border(Color.black, width: 1)
                        .clipped()
                    Text("Set Background")
                    Spacer()
                    Button(action: {
                         self.isShowingImagePicker.toggle()
                     }, label: {
                         Text("> ")
                     })
                     .sheet(isPresented: $isShowingImagePicker, content: {
                         ImagePickerView(isPresented: self.$isShowingImagePicker, selectedImage: self.$imageInBlackBox)
                     })
                              
                }
                
                Image(uiImage: imageInBlackBox)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .border(Color.black, width: 1)
                    .clipped()
                            
                Toggle(isOn: $allowShaking) {
                    Text("Allow Shaking")
                }
                Toggle(isOn: $autolock) {
                    Text("Auto Lock")
                }
            }
            
//        .navigationBarTitle(Text("Settings"), displayMode: .inline)
//            .foregroundColor(Color(red: 139/255, green: 125/255, blue: 105/255))
////            .navigationBarItems(leading:
////                NavigationLink(
////                    destination: HomeView()) {
////                        Image(systemName: "house")
////                        .resizable()
////                        .scaledToFit()
////                        .frame(width: 40, height: 40)
////                        .clipped()
////
////            }, trailing: Text("Hi"))
//            .navigationBarItems(trailing: Text("Hi"))
//           // .foregroundColor(.red)
//            .background(Image(uiImage: imageInBlackBox))
//        }
    }
    
}


struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var isPresented: Bool
    @Binding var selectedImage: UIImage
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIViewController {
        let controller = UIImagePickerController()
        controller.delegate = context.coordinator
        return controller
    }
    
    func makeCoordinator() -> ImagePickerView.Coordinator {
        return Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: ImagePickerView
        init(parent: ImagePickerView) {
            self.parent = parent
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImageFromPicker = info[.originalImage] as? UIImage {
                print(selectedImageFromPicker)
                self.parent.selectedImage = selectedImageFromPicker
            }
            self.parent.isPresented = false
        }
    }
    
    

    func updateUIViewController(_ uiViewController: ImagePickerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ImagePickerView>) {
    }
}

struct DummyView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<DummyView>) -> UIButton {
        let button = UIButton()
        button.setTitle("DUMMY", for: .normal)
        button.backgroundColor = .red
        return button
    }
    
    func updateUIView(_ uiView: DummyView.UIViewType, context: UIViewRepresentableContext<DummyView>) {
    }
}



extension UIImage {
func imageWithColor(tintColor: UIColor) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)

    let context = UIGraphicsGetCurrentContext()!
    context.translateBy(x: 0, y: self.size.height)
    context.scaleBy(x: 1.0, y: -1.0);
    context.setBlendMode(.normal)

    let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height) as CGRect
    context.clip(to: rect, mask: self.cgImage!)
    tintColor.setFill()
    context.fill(rect)

    let newImage = UIGraphicsGetImageFromCurrentImageContext()!
    UIGraphicsEndImageContext()

    return newImage
}
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

