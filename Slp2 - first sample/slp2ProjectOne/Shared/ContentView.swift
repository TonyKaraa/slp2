//
//  ContentView.swift
//  Shared
//
//  Created by mac on 8/29/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var show = false
    @State var audioPlayer: AVAudioPlayer!
    var images : [String] = ["Beppe", "animation1", "animation2","animation3","animation4","animation5","animation6","animation7","animation8","animation9","animation10","animation11","animation12","animation13","animation14","animation15","Beppe"]
 
    var body: some View {
        
        ZStack {
            
            Image("BckgImageSvg")
                .resizable()
               // .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                
                
                
               
                
            VStack {
                Spacer()
                HStack {
                   
                    if show {
                        
                        AnimatedImage(imageNames: images).layoutPriority(1)
                   
                    }
                   // Image("Beppe")
                    //    .aspectRatio(contentMode: .fit)
                    //    .padding(.leading, 60.0)
                        
                  //  Spacer()
                }
              //  .padding()
                Spacer()
                HStack {
                    
                    Button(action: {
                        
                        
                    }, label: {
                        Image("setting")
                         
                            .resizable()
                            .frame(width: 90.0, height: 90.0)
                        
                            
                        
                    })
                    .padding(.leading, 40.0)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        
                    }, label: {
                        Image("play")
                           .resizable()
                           .frame(width: 90.0, height: 90.0)
                })
                    Spacer()
                    Button(action: {
                        
                        
                    }, label: {
                        Image("info")
                           .resizable()
                           .frame(width: 90.0, height: 90.0)
                })
                    .padding(.trailing, 40.0)
                   
                    
                    
                }
               // .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                 
                
            
            }
            
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                   show.toggle()
                   playSounds("beppe")
                   
                }
               
                
            }
            
        })
        
       
    }
    
    func playSounds(_ soundFileName : String) {
            guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: ".m4a") else {
                fatalError("Unable to find \(soundFileName) in bundle")
            }

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error.localizedDescription)
            }
            audioPlayer.play()
        }
}


//MARK: - Animation Struct

struct AnimatedImage: View {
  @State private var image: Image?
  let imageNames: [String]

  var body: some View {
    Group {
        ZStack {
            
         
          if(image == Image("animation1")) {
          image?
              .resizable()
              .scaledToFit()
              .frame(width: 300, height:350)
              .offset(x: -260, y: 260)
            }
            else if(image == Image("animation2")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -240, y: 240)
            }
            else if(image == Image("animation3")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -200, y: 220)
            }
            else if(image == Image("animation4")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -140, y: 170)
            }
            else if(image == Image("animation5")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -100, y: 170)
            }
            else if(image == Image("animation6")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -50, y: 170)
            }
            else if(image == Image("animation7")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x:0, y: 170)
            }
            else if(image == Image("animation8")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: 30, y: 210)
            }
            else if(image == Image("animation9")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: 50, y: 260)
            }
            else if(image == Image("animation10")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: 50, y: 260)
            }
            else if(image == Image("animation11")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -40, y: 260)
            }
            else if(image == Image("animation12")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -40, y: 270)
            }
            else if(image == Image("animation12")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -100, y: 260)
            }
            else if(image == Image("animation13")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -100, y: 270)
            }
            else if(image == Image("animation14")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -170, y: 260)
            }
            else if(image == Image("animation15")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -170, y: 270)
            }
            else if(image == Image("animation16")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -230, y: 260)
            }
            else if(image == Image("animation17")){
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:350)
                    .offset(x: -230, y: 270)
            }
            else {
                image?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225, height:350)
                    .offset(x: -270, y: 260)
            }
        }
    }.onAppear(perform: {
        self.animate()
    })
  }
  
  private func animate() {
    var imageIndex: Int = 0
  //0.025
    //0.03
    Timer.scheduledTimer(withTimeInterval: 0.07, repeats: true) { timer in
      if imageIndex < self.imageNames.count {
        self.image = Image(self.imageNames[imageIndex])
            imageIndex += 1
      }
      else {
        timer.invalidate()
      }
    }
  }
}




//MARK: - End of Animation struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
