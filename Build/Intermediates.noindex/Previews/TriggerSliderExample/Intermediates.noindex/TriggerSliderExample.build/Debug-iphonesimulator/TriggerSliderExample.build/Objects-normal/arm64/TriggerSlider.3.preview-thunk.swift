@_private(sourceFile: "TriggerSlider.swift") import TriggerSliderExample
import SwiftUI
import SwiftUI

extension StatefulPreviewWrapper {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSliderExample/TriggerSliderExample/TriggerSlider.swift", line: 93)
        __designTimeSelection(content(__designTimeSelection($value, "#3512.[3].[2].property.[0].[0].arg[0].value")), "#3512.[3].[2].property.[0].[0]")
    #sourceLocation()
    }
}

extension TriggerSlider_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSliderExample/TriggerSliderExample/TriggerSlider.swift", line: 71)
        __designTimeSelection(StatefulPreviewWrapper(__designTimeInteger("#3512.[2].[0].property.[0].[0].arg[0].value", fallback: 0)) {
            __designTimeSelection(TriggerSlider(sliderView: {
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: 30), style: .continuous).fill(__designTimeSelection(Color.orange, "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value"))
                    .overlay(__designTimeSelection(Image(systemName: __designTimeString("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "arrow.right.circle")).font(.system(size: __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value.arg[0].value", fallback: 30))), "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value")), "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0]")
            }, textView: {
                __designTimeSelection(Text(__designTimeString("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Slide to Unlock")).foregroundColor(__designTimeSelection(Color.orange, "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0]")
            },
            backgroundView: {
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: 30), style: .continuous)
                    .fill(__designTimeSelection(Color.orange.opacity(__designTimeFloat("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)), "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value")), "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0]")
            }, didSlideToEnd: {
                __designTimeSelection(print(__designTimeString("#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[3].value.[0].arg[0].value", fallback: "trigger!")), "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[3].value.[0]")
            }, offsetX: __designTimeSelection($0, "#3512.[2].[0].property.[0].[0].arg[1].value.[0].arg[4].value")).padding(__designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 10)).padding(.horizontal, __designTimeInteger("#3512.[2].[0].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 20)), "#3512.[2].[0].property.[0].[0].arg[1].value.[0]")
        }, "#3512.[2].[0].property.[0].[0]")
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
        __designTimeSelection(GeometryReader { proxy in
            __designTimeSelection(ZStack {
                
                __designTimeSelection(backgroundView()
                    .frame(height: sliderViewHeight + sliderViewPadding), "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(textView()
                    .opacity(__designTimeSelection(self.textLabelOpacity(totalWidth: __designTimeSelection(proxy.size.width, "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.modifier[0].arg[0].value")), "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")), "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                __designTimeSelection(HStack {
                    __designTimeSelection(self.sliderView()
                        .frame(width: __designTimeSelection(self.sliderViewWidth, "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[1].arg[0].value"), height: __designTimeSelection(self.sliderViewHeight, "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[1].arg[1].value"))
                        .padding(__designTimeSelection(self.sliderViewPadding, "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[2].arg[0].value"))
                        .offset(x: __designTimeSelection(self.offsetX, "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[3].arg[0].value"), y: __designTimeInteger("#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[3].arg[1].value", fallback: 0))
                        .gesture(__designTimeSelection(DragGesture(coordinateSpace: .local).onChanged({ value in
                            
                            if value.translation.width > 0 && offsetX <= proxy.size.width - self.sliderViewWidth - self.sliderViewPadding * 2   {
                                    self.offsetX = value.translation.width
                            }
                    }).onEnded({ value in
                        if self.offsetX < proxy.size.width - self.sliderViewWidth - self.sliderViewPadding * 2 {
                            __designTimeSelection(withAnimation {
                                self.offsetX = __designTimeInteger("#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[4].arg[0].value.modifier[1].arg[0].value.[0].[0].[0].arg[0].value.[0].[0]", fallback: 0)
                            }, "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[4].arg[0].value.modifier[1].arg[0].value.[0].[0].[0]")
                        } else {
                            __designTimeSelection(self.didSlideToEnd(), "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[4].arg[0].value.modifier[1].arg[0].value.[0].[1].[0]")
                        }
               
                    }), "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].modifier[4].arg[0].value")), "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0]")
                    __designTimeSelection(Spacer(), "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1]")
                }, "#3512.[1].[8].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
  
            }, "#3512.[1].[8].property.[0].[0].arg[0].value.[0]")
        }, "#3512.[1].[8].property.[0].[0]")
    #sourceLocation()
    }
}

import struct TriggerSliderExample.TriggerSlider
import struct TriggerSliderExample.TriggerSlider_Previews
import struct TriggerSliderExample.StatefulPreviewWrapper