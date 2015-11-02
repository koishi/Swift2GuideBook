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

//1.4

//XCPSetExecutionShouldContinueIndefinitely(true)
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
class SampleTimer: NSObject
{
  func timerStart()
  {
    NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "fire", userInfo: nil, repeats: true)
  }
  var counter = 0
  func fire()
  {
    print("timer fire!")
  }
}

let sampleTimer = SampleTimer()
sampleTimer.timerStart()

//1.5

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
class SampleTimer2: NSObject
{
  func timerStart()
  {
    NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "fire", userInfo: nil, repeats: true)
  }
  var counter = 0
  func fire()
  {
//    XCPCaptureValue("count", value: ++counter)
//    XCPCaptureValue("random", value: arc4random_uniform(100))
    XCPlaygroundPage.currentPage.captureValue(++counter, withIdentifier: "count")
    XCPlaygroundPage.currentPage.captureValue(arc4random_uniform(100), withIdentifier: "random")
  }
}

let sampleTimer2 = SampleTimer2()
sampleTimer2.timerStart()
