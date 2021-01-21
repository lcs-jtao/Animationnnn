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
let offWhite = Color(hue: 81,
                     saturation: 5,
                     brightness: 88,
                     alpha: 100)

let limeGreen = Color(hue: 106,
                      saturation: 64,
                      brightness: 73,
                      alpha: 100)
canvas.highPerformance=true
canvas.fillColor=Color.black
canvas.drawRectangle(at:Point(x:0,y:0), width:400, height:600)
canvas.fillColor=limeGreen
canvas.drawRectangle(at:Point(x:0,y:400), width:400, height:200)
for green in stride(from:0, through:400, by:40){
    for gcircle in stride(from:0, through:400, by:40){
        canvas.fillColor=limeGreen
        canvas.drawEllipse(at:Point(x:gcircle,y:green), width:36, height:36)
    }
}
for white in stride(from:0, through:9, by:1){
    for wcircle in stride(from:40, through:360-white*40, by:40){
        canvas.fillColor=offWhite
        canvas.drawEllipse(at:Point(x:wcircle,y:400-white*40-wcircle), width:36, height:36)
    }
}
canvas.drawText(message:"pixies", at:Point(x:10,y:410), size:70)
canvas.drawText(message:"saturday", at:Point(x:15,y:550), size:10)
canvas.drawText(message:"december 13 1986", at:Point(x:15,y:534), size:10)
canvas.drawText(message:"9 pm over 21", at:Point(x:15,y:518), size:10)
canvas.drawText(message:"at the rat", at:Point(x:280,y:550), size:10)
canvas.drawText(message:"528 commonwealth", at:Point(x:280,y:534), size:10)
canvas.drawText(message:"boston, mass.", at:Point(x:280,y:518), size:10)
canvas.textColor=offWhite
canvas.drawText(message:"with", at:Point(x:280,y:455), size:13)
canvas.drawText(message:"throwing muses", at:Point(x:280,y:439), size:13)
canvas.drawText(message:"big dipper", at:Point(x:280,y:423), size:13)

canvas.highPerformance=false
canvas.drawAxes(withScale:true, by:50)
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
