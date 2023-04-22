//
//  TouchIndicatorWindow.swift
//  TouchApplication
//
//  Created by Chun-Li Cheng on 2023/4/22.
//

import UIKit

class TouchIndicatorWindow: UIWindow {
    private var touchIndicators = [UITouch: TouchIndicatorView]()

    override func sendEvent(_ event: UIEvent) {
        super.sendEvent(event)

        guard event.type == .touches else { return }

        for touch in event.allTouches! {
            switch touch.phase {
            case .began:
                let touchIndicator = TouchIndicatorView(frame: CGRect(x: 0, y: 0,
                                                                      width: 44, height: 44))
                touchIndicator.center = touch.location(in: self)
                addSubview(touchIndicator)
                touchIndicators[touch] = touchIndicator
            case .moved:
//                let touchIndicator = TouchIndicatorView(frame: CGRect(x: 0, y: 0,
//                                                                      width: 44, height: 44))
//                touchIndicator.center = touch.location(in: self)
//                addSubview(touchIndicator)
//                touchIndicators[touch] = touchIndicator
                
                if let touchIndicator = touchIndicators[touch] {
                    touchIndicator.center = touch.location(in: self)
                }
            case .ended, .cancelled:
                if let touchIndicator = touchIndicators[touch] {
                    touchIndicator.removeFromSuperview()
                    touchIndicators.removeValue(forKey: touch)
                }
            default: break
            }
        }
    }
}

