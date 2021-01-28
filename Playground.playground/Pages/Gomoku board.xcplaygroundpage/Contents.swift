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

canvas.highPerformance=true
canvas.translate(to:Point(x:75,y:75))
//horizontal lines
for hline in stride(from:0,through:420,by:30){
    canvas.drawLine(from:Point(x:0,y:hline),to:(Point(x:420,y:hline)))
}
//vertical lines
for vline in stride(from:0,through:420,by:30){
    canvas.drawLine(from:Point(x:vline,y:0),to:Point(x:vline,y:420))
}
//dots
canvas.drawEllipse(at:Point(x:90,y:330),width:10,height:10)
canvas.drawEllipse(at:Point(x:90,y:90),width:10,height:10)
canvas.drawEllipse(at:Point(x:330,y:330),width:10,height:10)
canvas.drawEllipse(at:Point(x:330,y:90),width:10,height:10)
canvas.drawEllipse(at:Point(x:210,y:210),width:10,height:10)
//numbers & letters
var alp: [String]=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"]
for i in stride(from:1, through:15, by:1){
    if i<=9{
        canvas.drawText(message:String(i), at:Point(x:-16,y:(i-1)*30-6),size:13)
    } else {
        canvas.drawText(message:String(i), at:Point(x:-20,y:(i-1)*30-6),size:13)
    }
}
for i in stride(from:0,through:14,by:1){
    canvas.drawText(message:alp[i],at:Point(x:i*30-6,y:-20),size:13)
}
canvas.highPerformance=false
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
