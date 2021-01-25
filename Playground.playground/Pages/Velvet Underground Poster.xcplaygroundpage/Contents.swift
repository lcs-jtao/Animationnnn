//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
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
//Colors
let black=Color(hue:0,saturation:0,brightness:0,alpha:100)
let purple=Color(hue:309,saturation:78,brightness:64,alpha:100)
let offWhite=Color(hue:83,saturation:4,brightness:89,alpha:100)
canvas.drawAxes(withScale:true,by:50)

///canvas.fillColor=black
///canvas.drawRectangle(at:Point(x:0,y:0),width:400,height:600)
///for ppl in stride(from:10,through:290,by:70){
func arrow(relativeTo p: Point, color: Color) {
    canvas.defaultLineWidth=17
    canvas.lineColor=color
    canvas.drawLine(from:Point(x:p.x,y:p.y),to:Point(x:p.x,y:p.y+48))
    canvas.drawLine(from:Point(x:p.x,y:p.y),to:Point(x:p.x+48,y:p.y))
    canvas.drawLine(from:Point(x:p.x+5,y:p.y+5),to:Point(x:p.x+60,y:p.y+60))
}
for allp in stride(from:8,through:328,by:80){
    for ppl in stride(from:8,through:328,by:80){
        arrow(relativeTo:Point(x:ppl,y:allp),color: purple)
    }
}
for wte in stride(from:8,through:328,by:80){
    arrow(relativeTo:Point(x:wte,y:wte),color: offWhite)
}
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
