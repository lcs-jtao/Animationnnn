//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Translate the origin to middle of canvas
canvas.translate(to: Point(x: 200, y: 200))

for y1 in stride(from:0,through:50,by:1){
    canvas.defaultLineWidth=2
    canvas.lineColor=Color.init(hue:y1, saturation:80, brightness:80, alpha:100)
    canvas.drawLine(from:Point(x:y1,y:0),to:Point(x:y1,y:50))
    canvas.lineColor=Color.init(hue:y1+50, saturation:80, brightness:80, alpha:100)
    canvas.drawLine(from:Point(x:y1+50,y:0),to:Point(x:y1+50,y:100))
    canvas.lineColor=Color.init(hue:y1+100, saturation:80, brightness:80, alpha:100)
    canvas.drawLine(from:Point(x:y1+100,y:0),to:Point(x:y1+100,y:150))
    canvas.lineColor=Color.init(hue:y1+150, saturation:80, brightness:80, alpha:100)
    canvas.drawLine(from:Point(x:y1+150,y:0),to:Point(x:y1+150,y:200))
    canvas.lineColor=Color.init(hue:y1+200, saturation:80, brightness:80, alpha:100)
    canvas.drawLine(from:Point(x:y1+200,y:0),to:Point(x:y1+200,y:250))
}
for x1 in stride(from:0,through:200,by:50){
    canvas.defaultLineWidth=5
    canvas.lineColor=Color.black
    canvas.drawLine(from:Point(x:x1,y:x1),to:Point(x:x1,y:x1+50))
    canvas.drawLine(from:Point(x:x1,y:x1+50),to:Point(x:x1+50,y:x1+50))
}
canvas.drawLine(from:Point(x:0,y:0),to:Point(x:250,y:0))
canvas.drawLine(from:Point(x:250,y:0),to:Point(x:250,y:250))
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
