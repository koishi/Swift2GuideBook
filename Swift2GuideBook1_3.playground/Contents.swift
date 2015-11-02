//1-3-1

import UIKit
import XCPlayground

// 1.1
class SampleClass
{
  deinit {
    print("deinit")
  }
}

var sample: SampleClass? = SampleClass()

sample = nil // deinitが呼ばれる

//1.2

for i in 0...10 {
  i * i
}

//1.3

let circleRect = CGRectMake(0, 0, 200, 200)
class CircleView : UIView
{
  override func drawRect(rect: CGRect)
  {
    let context:CGContextRef = UIGraphicsGetCurrentContext()!
    
    UIColor.whiteColor().setFill()
    CGContextFillRect(context, rect)
    
    UIColor.blackColor().setFill()
    CGContextFillEllipseInRect(context, rect)
  }
}

let view = CircleView(frame: circleRect)

// XCPShowView(_:view:) is deprecated. Set 'XCPlaygroundPage.liveView' instead.
//XCPShowView("Live View", view: view)

XCPlaygroundPage.currentPage.liveView = view



