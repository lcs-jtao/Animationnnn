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
canvas.drawShapesWithBorders=true
//outline (triangle)
canvas.defaultBorderWidth=30
canvas.fillColor=Color.white
canvas.drawCustomShape(with: [Point(x:50,y:50),Point(x:250,y:350),Point(x:450,y:50)])
canvas.lineColor=Color.white
canvas.drawLine(from:Point(x:185,y:255), to:Point(x:198,y:275), lineWidth:15)
canvas.drawLine(from:Point(x:308,y:265), to:Point(x:320,y:248), lineWidth:15)
//planet
canvas.fillColor=Color.black
canvas.defaultBorderWidth=10
canvas.drawEllipse(at: Point(x: 250, y: 390), width: 70, height: 70)
canvas.fillColor=Color.white
canvas.rotate(by:20)
canvas.drawRoundedRectangle(at: Point(x: 312, y: 275), width: 110, height: 9)
canvas.rotate(by:-20)
//base
canvas.fillColor=Color.black
canvas.drawCustomShape(with:[Point(x:50,y:50),Point(x:82,y:100),Point(x:418,y:100),Point(x:450,y:50)])
//grass1
canvas.defaultBorderWidth=1
canvas.drawCustomShape(with:[Point(x:82,y:100),Point(x:105,y:135),Point(x:125,y:100)])
canvas.drawCustomShape(with:[Point(x:125,y:100),Point(x:137,y:150),Point(x:150,y:100)])
//tree1
canvas.drawCustomShape(with:[Point(x:155,y:125),Point(x:180,y:150),Point(x:205,y:125)])
canvas.drawCustomShape(with:[Point(x:160,y:147),Point(x:180,y:168),Point(x:200,y:147)])
canvas.drawCustomShape(with:[Point(x:165,y:165),Point(x:180,y:183),Point(x:195,y:165)])
canvas.drawRectangle(at:Point(x:175,y:100), width:10, height: 25)
//tree2
canvas.drawCustomShape(with:[Point(x:200,y:135),Point(x:230,y:165),Point(x:260,y:135)])
canvas.drawCustomShape(with:[Point(x:207,y:162),Point(x:230,y:187),Point(x:253,y:162)])
canvas.drawCustomShape(with:[Point(x:214,y:184),Point(x:230,y:204),Point(x:248,y:184)])
canvas.drawRectangle(at:Point(x:224,y:100), width: 12, height: 35)
//grass2
canvas.drawCustomShape(with:[Point(x:260,y:100),Point(x:272,y:130),Point(x:284,y:100)])
canvas.drawCustomShape(with:[Point(x:282,y:100),Point(x:297,y:150),Point(x:312,y:100)])
//tree3
canvas.drawCustomShape(with:[Point(x:300,y:120),Point(x:330,y:145),Point(x:360,y:120)])
canvas.drawCustomShape(with:[Point(x:307,y:142),Point(x:330,y:162),Point(x:353,y:142)])
canvas.drawCustomShape(with:[Point(x:314,y:159),Point(x:330,y:174),Point(x:348,y:159)])
canvas.drawRectangle(at:Point(x:325,y:100), width: 10, height: 20)
//dots
canvas.drawEllipse(at:Point(x:160,y:112),width:7,height:7)
canvas.drawEllipse(at:Point(x:148,y:165),width:7,height:7)
canvas.drawEllipse(at:Point(x:200,y:185),width:7,height:7)
canvas.drawEllipse(at:Point(x:252,y:113),width:7,height:7)
canvas.drawEllipse(at:Point(x:262,y:173),width:7,height:7)
canvas.drawEllipse(at:Point(x:253,y:217),width:7,height:7)
canvas.drawEllipse(at:Point(x:193,y:230),width:7,height:7)
canvas.drawEllipse(at:Point(x:300,y:163),width:7,height:7)
canvas.drawEllipse(at:Point(x:360,y:110),width:7,height:7)
canvas.drawEllipse(at:Point(x:300,y:220),width:7,height:7)
canvas.drawEllipse(at:Point(x:233,y:293),width:7,height:7)
//stars
canvas.drawRoundedRectangle(at:Point(x:168,y:200), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:173,y:195), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:203,y:115), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:208,y:110), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:272,y:139), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:277,y:134), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:210,y:210), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:215,y:205), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:280,y:195), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:285,y:190), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:365,y:130), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:370,y:125), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:325,y:188), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:330,y:183), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:263,y:282), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:268,y:277), width:5, height:15)
canvas.drawRoundedRectangle(at:Point(x:242,y:317), width:15, height:5)
canvas.drawRoundedRectangle(at:Point(x:247,y:312), width:5, height:15)
//loop
canvas.lineColor=Color.black
canvas.drawCurve(from:Point(x:203,y:315),to:Point(x:311,y:297), control1:Point(x:103,y:285), control2:Point(x:368,y:240), showControlPoints:false, lineWidth:8)
canvas.drawCurve(from:Point(x:178,y:280),to:Point(x:330,y:262), control1:Point(x:78,y:250), control2:Point(x:383,y:205), showControlPoints:false, lineWidth:8)
//outside decor
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
