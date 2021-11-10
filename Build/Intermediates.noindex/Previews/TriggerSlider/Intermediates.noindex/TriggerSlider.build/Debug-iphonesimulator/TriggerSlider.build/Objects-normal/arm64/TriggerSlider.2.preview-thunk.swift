@_private(sourceFile: "TriggerSlider.swift") import TriggerSlider
import SwiftUI
import SwiftUI

extension StatefulPreviewWrapper {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 126)
        content($value)
    #sourceLocation()
    }
}

extension TriggerSlider_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 103)
        StatefulPreviewWrapper(__designTimeInteger("#19893.[2].[0].property.[0].[0].arg[0].value", fallback: 0)) {
            TriggerSlider(sliderView: {
                RoundedRectangle(cornerRadius: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: 30), style: .continuous).fill(Color.orange)
                    .overlay(Image(systemName: __designTimeString("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "arrow.left")).font(.system(size: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value.arg[0].value", fallback: 30))).foregroundColor(.white))
            }, textView: {
                Text(__designTimeString("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Slide to Unlock")).foregroundColor(Color.orange)
            },
            backgroundView: {
                RoundedRectangle(cornerRadius: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: 30), style: .continuous)
                    .fill(Color.orange.opacity(__designTimeFloat("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)))
            }, offsetX: $0,
              didSlideToEnd: {
                print(__designTimeString("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[4].value.[0].arg[0].value", fallback: "trigger!"))
            }, settings: TriggerSliderSettings(sliderViewVPadding: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[5].value.arg[0].value", fallback: 5), slideDirection: .right)).padding(__designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 10)).padding(.horizontal, __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 20))
        }
    #sourceLocation()
    }
}

extension TriggerSlider {
    @_dynamicReplacement(for: textLabelOpacity(totalWidth:)) private func __preview__textLabelOpacity(totalWidth: CGFloat)->CGFloat {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 96)
        let halfTotalWidth =  totalWidth / __designTimeInteger("#19893.[1].[10].[0].value.[0]", fallback: 2)
        return (halfTotalWidth - abs(self.offsetX)) / halfTotalWidth
    #sourceLocation()
    }
}

extension TriggerSlider {
    @_dynamicReplacement(for: dragOnEnded(value:totalWidth:)) private func __preview__dragOnEnded(value: DragGesture.Value, totalWidth: CGFloat) {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 82)
        
        let resetConditionSlideRight = self.settings.slideDirection == .right && self.offsetX < totalWidth - settings.sliderViewWidth - settings.sliderViewHPadding * __designTimeInteger("#19893.[1].[9].[0].value.[0]", fallback: 2)
        
        let resetConditionSlideLeft = self.settings.slideDirection == .left && self.offsetX > -(totalWidth - settings.sliderViewWidth - settings.sliderViewHPadding * __designTimeInteger("#19893.[1].[9].[1].value.[0]", fallback: 2))
        
        if resetConditionSlideRight || resetConditionSlideLeft {
            withAnimation {
                self.offsetX = __designTimeInteger("#19893.[1].[9].[2].[0].[0].arg[0].value.[0].[0]", fallback: 0)
            }
        } else {
            self.didSlideToEnd()
        }
    #sourceLocation()
    }
}

extension TriggerSlider {
    @_dynamicReplacement(for: dragOnChanged(value:totalWidth:)) private func __preview__dragOnChanged(value: DragGesture.Value, totalWidth: CGFloat) {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 73)
        
        if settings.slideDirection == .right && value.translation.width > 0 && offsetX <= totalWidth  - settings.sliderViewWidth - settings.sliderViewHPadding * 2   {
                self.offsetX = value.translation.width
        } else if settings.slideDirection == .left && value.translation.width < 0 && offsetX >= -totalWidth  + settings.sliderViewWidth + settings.sliderViewHPadding * 2 {
            self.offsetX = value.translation.width
        }
    #sourceLocation()
    }
}

extension TriggerSlider {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 33)
        GeometryReader { proxy in
            ZStack {
                
                backgroundView
                    .frame(height: settings.sliderViewHeight + settings.sliderViewVPadding)
                
                textView
                    .opacity(self.textLabelOpacity(totalWidth: proxy.size.width))
                
                HStack {
                    
                    if settings.slideDirection == .left {
                        Spacer()
                    }
                    
                    self.sliderView
                        .frame(width: settings.sliderViewWidth, height: settings.sliderViewHeight)
                        .padding(.horizontal, settings.sliderViewHPadding)
                        .padding(.vertical, settings.sliderViewVPadding)
                        .offset(x: self.offsetX, y: __designTimeInteger("#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[3].arg[1].value", fallback: 0))
                        .gesture(DragGesture(coordinateSpace: .local).onChanged({ value in
                            
                            self.dragOnChanged(value: value, totalWidth: proxy.size.width)
                            
                    }).onEnded({ value in
                        self.dragOnEnded(value: value, totalWidth: proxy.size.width)
               
                    }))
                    
                    if settings.slideDirection == .right {
                        Spacer()
                    }
                }
  
            }
        }
    #sourceLocation()
    }
}

import struct TriggerSlider.TriggerSlider
import struct TriggerSlider.TriggerSlider_Previews
import struct TriggerSlider.StatefulPreviewWrapper