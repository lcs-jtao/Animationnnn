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

// Replace this comment with your first comment – what is the goal of the code you're about to write?
canvas.drawAxes(withScale:true,by:50)
//sky
canvas.drawShapesWithBorders=true
canvas.fillColor=Color.blue
canvas.drawRectangle(at:Point(x:0,y:200),width:600,height:400)
//grass
canvas.fillColor=Color.green
canvas.drawRectangle(at:Point(x:0,y:200),width:600,height:100)
//sun
canvas.fillColor=Color.yellow
canvas.drawEllipse(at: Point(x:600,y:600), width: 150, height: 150)
canvas.drawLine(from: Point(x:475,y:570), to: Point(x:510,y:575))
canvas.drawLine(from: Point(x:492,y:530), to: Point(x:520,y:550))
canvas.drawLine(from: Point(x:515,y:500), to: Point(x:535,y:525))
canvas.drawLine(from: Point(x:560,y:485), to: Point(x:570,y:515))
//clouds
canvas.drawShapesWithBorders=false
canvas.fillColor=Color.white
canvas.drawEllipse(at:Point(x:250,y:550),width:40,height:40)
canvas.drawEllipse(at:Point(x:225,y:537),width:40,height:40)
canvas.drawEllipse(at:Point(x:275,y:537),width:40,height:40)
canvas.drawEllipse(at:Point(x:250,y:537),width:40,height:40)

canvas.drawEllipse(at:Point(x:450,y:500),width:40,height:40)
canvas.drawEllipse(at:Point(x:425,y:487),width:40,height:40)
canvas.drawEllipse(at:Point(x:475,y:487),width:40,height:40)
canvas.drawEllipse(at:Point(x:450,y:487),width:40,height:40)
//trees
canvas.fillColor=Color(hue: 120, saturation: 70, brightness: 100, alpha: 100)
canvas.drawCustomShape(with: [Point(x:300,y:450),Point(x:350,y:530),Point(x:400,y:450)])
canvas.drawCustomShape(with: [Point(x:280,y:370),Point(x:350,y:470),Point(x:420,y:370)])
canvas.drawRectangle(at:Point(x:340,y:300),width:20,height:70)

canvas.drawCustomShape(with: [Point(x:425,y:420),Point(x:450,y:460),Point(x:475,y:420)])
canvas.drawCustomShape(with: [Point(x:415,y:380),Point(x:450,y:430),Point(x:485,y:380)])
canvas.drawCustomShape(with: [Point(x:405,y:340),Point(x:450,y:400),Point(x:495,y:340)])
canvas.drawRectangle(at:Point(x:443,y:300),width:14,height:40)
//ears
canvas.drawShapesWithBorders=true
canvas.fillColor=Color.black
canvas.drawEllipse(at:Point(x:80,y:450),width:45,height:45)
canvas.drawEllipse(at:Point(x:220,y:450),width:45,height:45)
//body
canvas.fillColor=Color.white
canvas.drawEllipse(at:Point(x:150,y:300),width:140,height:160)
//head
canvas.drawEllipse(at:Point(x:150,y:395),width:195,height:155)
//face
canvas.fillColor=Color.black
canvas.drawEllipse(at:Point(x:115,y:390),width:25,height:50)
canvas.drawEllipse(at:Point(x:185,y:390),width:25,height:50)
canvas.drawEllipse(at:Point(x:150,y:370),width:5,height:5)
//feet
canvas.drawEllipse(at:Point(x:80,y:295),width:40,height:40)
canvas.drawEllipse(at:Point(x:220,y:295),width:40,height:40)
canvas.drawEllipse(at:Point(x:95,y:230),width:50,height:35)
canvas.drawEllipse(at:Point(x:205,y:230),width:50,height:35)

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
