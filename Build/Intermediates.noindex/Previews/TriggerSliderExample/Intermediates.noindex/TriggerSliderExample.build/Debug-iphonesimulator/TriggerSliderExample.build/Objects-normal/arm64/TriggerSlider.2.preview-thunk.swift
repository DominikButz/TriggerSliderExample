@_private(sourceFile: "TriggerSlider.swift") import TriggerSliderExample
import SwiftUI
import SwiftUI

extension StatefulPreviewWrapper {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSliderExample/TriggerSliderExample/TriggerSlider.swift", line: 93)
        content($value)
    #sourceLocation()
    }
}

extension TriggerSlider_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSliderExample/TriggerSliderExample/TriggerSlider.swift", line: 71)
        StatefulPreviewWrapper(__designTimeInteger("#3512.[2].[0].property.[0].[0].arg[0].value", fallback: 0)) {
            TriggerSlider(sliderView: {
                RoundedRectangle(cornerRadius: __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: 30), style: .continuous).fill(Color.orange)
                    .overlay(Image(systemName: __designTimeString("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "arrow.right.circle")).font(.system(size: __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value.arg[0].value", fallback: 30))))
            }, textView: {
                Text(__designTimeString("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Slide to Unlock")).foregroundColor(Color.orange)
            },
            backgroundView: {
                RoundedRectangle(cornerRadius: __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: 30), style: .continuous)
                    .fill(Color.orange.opacity(__designTimeFloat("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)))
            }, didSlideToEnd: {
                print(__designTimeString("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[3].value.[0].arg[0].value", fallback: "trigger!"))
            }, offsetX: $0).padding(__designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 10)).padding(.horizontal, __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 20))
        }
    #sourceLocation()
    }
}

extension TriggerSlider {
    @_dynamicReplacement(for: textLabelOpacity(totalWidth:)) private func __preview__textLabelOpacity(totalWidth: CGFloat)->CGFloat {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSliderExample/TriggerSliderExample/TriggerSlider.swift", line: 63)
        let halfTotalWidth =  totalWidth / __designTimeInteger("#3512.[1].[9].[0].value.[0]", fallback: 2)
        return (halfTotalWidth - self.offsetX) / halfTotalWidth
        
    #sourceLocation()
    }
}

extension TriggerSlider {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSliderExample/TriggerSliderExample/TriggerSlider.swift", line: 26)
        GeometryReader { proxy in
            ZStack {
                
                backgroundView()
                    .frame(height: sliderViewHeight + sliderViewPadding)
                
                textView()
                    .opacity(self.textLabelOpacity(totalWidth: proxy.size.width))
                
                HStack {
                    self.sliderView()
                        .frame(width: self.sliderViewWidth, height: self.sliderViewHeight)
                        .padding(self.sliderViewPadding)
                        .offset(x: self.offsetX, y: __designTimeInteger("#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[3].arg[1].value", fallback: 0))
                        .gesture(DragGesture(coordinateSpace: .local).onChanged({ value in
                            
                            if value.translation.width > 0 && offsetX <= proxy.size.width - self.sliderViewWidth - self.sliderViewPadding * 2   {
                                    self.offsetX = value.translation.width
                            }
                    }).onEnded({ value in
                        if self.offsetX < proxy.size.width - self.sliderViewWidth - self.sliderViewPadding * 2 {
                            withAnimation {
                                self.offsetX = __designTimeInteger("#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[4].arg[0].value.modifier[1].arg[0].value.[0].[0].[0].arg[0].value.[0].[0]", fallback: 0)
                            }
                        } else {
                            self.didSlideToEnd()
                        }
               
                    }))
                    Spacer()
                }
  
            }
        }
    #sourceLocation()
    }
}

import struct TriggerSliderExample.TriggerSlider
import struct TriggerSliderExample.TriggerSlider_Previews
import struct TriggerSliderExample.StatefulPreviewWrapper