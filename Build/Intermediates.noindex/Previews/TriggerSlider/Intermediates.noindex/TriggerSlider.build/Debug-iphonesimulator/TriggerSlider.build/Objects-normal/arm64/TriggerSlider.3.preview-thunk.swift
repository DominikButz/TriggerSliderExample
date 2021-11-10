@_private(sourceFile: "TriggerSlider.swift") import TriggerSlider
import SwiftUI
import SwiftUI

extension StatefulPreviewWrapper {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 126)
        __designTimeSelection(content(__designTimeSelection($value, "#19893.[3].[2].property.[0].[0].arg[0].value")), "#19893.[3].[2].property.[0].[0]")
    #sourceLocation()
    }
}

extension TriggerSlider_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/TriggerSlider/Sources/TriggerSlider/TriggerSlider.swift", line: 103)
        __designTimeSelection(StatefulPreviewWrapper(__designTimeInteger("#19893.[2].[0].property.[0].[0].arg[0].value", fallback: 0)) {
            __designTimeSelection(TriggerSlider(sliderView: {
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: 30), style: .continuous).fill(__designTimeSelection(Color.orange, "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[0].arg[0].value"))
                    .overlay(__designTimeSelection(Image(systemName: __designTimeString("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: "arrow.left")).font(.system(size: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value.modifier[0].arg[0].value.arg[0].value", fallback: 30))).foregroundColor(.white), "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].modifier[1].arg[0].value")), "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0]")
            }, textView: {
                __designTimeSelection(Text(__designTimeString("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Slide to Unlock")).foregroundColor(__designTimeSelection(Color.orange, "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value")), "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[1].value.[0]")
            },
            backgroundView: {
                __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].arg[0].value", fallback: 30), style: .continuous)
                    .fill(__designTimeSelection(Color.orange.opacity(__designTimeFloat("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)), "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value")), "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[2].value.[0]")
            }, offsetX: __designTimeSelection($0, "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[3].value"),
              didSlideToEnd: {
                __designTimeSelection(print(__designTimeString("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[4].value.[0].arg[0].value", fallback: "trigger!")), "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[4].value.[0]")
            }, settings: __designTimeSelection(TriggerSliderSettings(sliderViewVPadding: __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[5].value.arg[0].value", fallback: 5), slideDirection: .right), "#19893.[2].[0].property.[0].[0].arg[1].value.[0].arg[5].value")).padding(__designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: 10)).padding(.horizontal, __designTimeInteger("#19893.[2].[0].property.[0].[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 20)), "#19893.[2].[0].property.[0].[0].arg[1].value.[0]")
        }, "#19893.[2].[0].property.[0].[0]")
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
            __designTimeSelection(withAnimation {
                self.offsetX = __designTimeInteger("#19893.[1].[9].[2].[0].[0].arg[0].value.[0].[0]", fallback: 0)
            }, "#19893.[1].[9].[2].[0].[0]")
        } else {
            __designTimeSelection(self.didSlideToEnd(), "#19893.[1].[9].[2].[1].[0]")
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
        __designTimeSelection(GeometryReader { proxy in
            __designTimeSelection(ZStack {
                
                __designTimeSelection(backgroundView
                    .frame(height: settings.sliderViewHeight + settings.sliderViewVPadding), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(textView
                    .opacity(__designTimeSelection(self.textLabelOpacity(totalWidth: __designTimeSelection(proxy.size.width, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.modifier[0].arg[0].value")), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                __designTimeSelection(HStack {
                    
                    if settings.slideDirection == .left {
                        __designTimeSelection(Spacer(), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[0].[0].[0]")
                    }
                    
                    __designTimeSelection(self.sliderView
                        .frame(width: __designTimeSelection(settings.sliderViewWidth, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[0].value"), height: __designTimeSelection(settings.sliderViewHeight, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[1].value"))
                        .padding(.horizontal, __designTimeSelection(settings.sliderViewHPadding, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[1].arg[1].value"))
                        .padding(.vertical, __designTimeSelection(settings.sliderViewVPadding, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[2].arg[1].value"))
                        .offset(x: __designTimeSelection(self.offsetX, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[3].arg[0].value"), y: __designTimeInteger("#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[3].arg[1].value", fallback: 0))
                        .gesture(__designTimeSelection(DragGesture(coordinateSpace: .local).onChanged({ value in
                            
                            __designTimeSelection(self.dragOnChanged(value: __designTimeSelection(value, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[4].arg[0].value.modifier[0].arg[0].value.[0].modifier[0].arg[0].value"), totalWidth: __designTimeSelection(proxy.size.width, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[4].arg[0].value.modifier[0].arg[0].value.[0].modifier[0].arg[1].value")), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[4].arg[0].value.modifier[0].arg[0].value.[0]")
                            
                    }).onEnded({ value in
                        __designTimeSelection(self.dragOnEnded(value: __designTimeSelection(value, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[4].arg[0].value.modifier[1].arg[0].value.[0].modifier[0].arg[0].value"), totalWidth: __designTimeSelection(proxy.size.width, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[4].arg[0].value.modifier[1].arg[0].value.[0].modifier[0].arg[1].value")), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[4].arg[0].value.modifier[1].arg[0].value.[0]")
               
                    }), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1].modifier[4].arg[0].value")), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[1]")
                    
                    if settings.slideDirection == .right {
                        __designTimeSelection(Spacer(), "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value.[2].[0].[0]")
                    }
                }, "#19893.[1].[7].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
  
            }, "#19893.[1].[7].property.[0].[0].arg[0].value.[0]")
        }, "#19893.[1].[7].property.[0].[0]")
    #sourceLocation()
    }
}

import struct TriggerSlider.TriggerSlider
import struct TriggerSlider.TriggerSlider_Previews
import struct TriggerSlider.StatefulPreviewWrapper