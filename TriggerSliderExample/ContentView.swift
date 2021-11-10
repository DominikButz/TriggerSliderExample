//
//  ContentView.swift
//  TriggerSliderExample
//
//  Created by Dominik Butz on 6/11/2021.
//

import SwiftUI
import TriggerSlider
import Neumorphic

struct ContentView: View {
    
    @State private var simpleRightDirectionSliderOffsetX: CGFloat = 0
    @State private var simpleLeftDirectionSliderOffsetX: CGFloat = 0
    @State private var rectangularSliderOffsetX: CGFloat = 0
    @State private var  neumorphicSliderOffsetX: CGFloat = 0
    
    @State private var alertPresented: Bool = false
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            
            Text("Trigger Slider Examples").font(.system(.headline)).foregroundColor(.primary).padding()
            
            VStack {
                TriggerSlider(sliderView: {
                    RoundedRectangle(cornerRadius: 30, style: .continuous).fill(Color.orange)
                        .overlay(Image(systemName: "arrow.right").font(.system(size: 30)).foregroundColor(.white))
                }, textView: {
                    Text("Slide to Unlock").foregroundColor(Color.orange)
                },
                backgroundView: {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color.orange.opacity(0.5))
                }, offsetX: self.$simpleRightDirectionSliderOffsetX,
                  didSlideToEnd: {
                    print("Triggered right direction slider!")
                    self.alertPresented = true
                }, settings: TriggerSliderSettings(sliderViewVPadding: 5, slideDirection: .right)).padding(.vertical, 10).padding(.horizontal, 20)
                
                Spacer()
                
                TriggerSlider(sliderView: {
                    Circle().fill(Color.green)
                        .overlay(Image(systemName: "chevron.left.circle").font(.system(size: 25)).foregroundColor(.white))
                }, textView: {
                    Text("Slide to Unlock").foregroundColor(Color.green)
                },
                backgroundView: {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color.green.opacity(0.5))
                }, offsetX: self.$simpleLeftDirectionSliderOffsetX,
                  didSlideToEnd: {
                    print("Triggered left direction slider!")
                    self.alertPresented = true
                }, settings: TriggerSliderSettings(sliderViewVPadding: -5, slideDirection: .left)).padding(.vertical, 10).padding(.horizontal, 20)
                
                Spacer()
                
                TriggerSlider(sliderView: {
                    RoundedRectangle(cornerRadius: 5, style: .continuous).fill(Color.blue)
                        .overlay(Image(systemName: "chevron.right.square").font(.system(size: 25)).foregroundColor(.white))
                }, textView: {
                    Text("Slide to Unlock").foregroundColor(Color.blue)
                },
                backgroundView: {
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                        .fill(Color.blue.opacity(0.5))
                }, offsetX: self.$rectangularSliderOffsetX,
                  didSlideToEnd: {
                    print("Triggered rectangular slider!")
                    self.alertPresented = true
                }, settings: TriggerSliderSettings(sliderViewVPadding: -5, slideDirection: .right)).padding(.vertical, 10).padding(.horizontal, 20)
            
                
                // Neumorphic
                TriggerSlider(sliderView: {
                    Circle().fill(Color.Neumorphic.main)
                        .softOuterShadow(offset:4, radius: 3)
                        .overlay(Image(systemName: "chevron.right").font(.system(size: 25)).foregroundColor(.white))
                }, textView: {
                    Text("Slide to Unlock").foregroundColor(Color.Neumorphic.secondary)
                },
                backgroundView: {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(Color.Neumorphic.main)
                        .softInnerShadow(RoundedRectangle(cornerRadius: 30))
                }, offsetX: self.$neumorphicSliderOffsetX,
                  didSlideToEnd: {
                    print("Triggered left direction slider!")
                    self.alertPresented = true
                }, settings: TriggerSliderSettings(sliderViewVPadding: -5, slideDirection: .right)).padding(.vertical, 10).padding(.horizontal, 20)
                
            }.frame(maxHeight: 300)
            
            Spacer()
            
        }.alert(isPresented: $alertPresented) {
            Alert(title: Text("Slider Action"), message: Text("Slider Action"), dismissButton: Alert.Button.cancel(Text("Reset"), action: {
                withAnimation {
                    self.simpleLeftDirectionSliderOffsetX = 0
                    self.simpleRightDirectionSliderOffsetX = 0
                    self.rectangularSliderOffsetX = 0
                    self.neumorphicSliderOffsetX = 0
                }
            }))
        }.background(Color.Neumorphic.main)
            .onChange(of: self.colorScheme) { newValue in
                print("color scheme changed to \(newValue)")
                Color.Neumorphic.colorSchemeType = newValue == .dark ? .dark : .light
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
