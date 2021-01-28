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
//Color
let babyblue = Color(hue:175,saturation:30,brightness:85,alpha:100)
let pink = Color(hue:350, saturation:40, brightness:100, alpha:100)
let lightyellow = Color(hue:55,saturation:70,brightness:90,alpha:100)

//background
canvas.fillColor=babyblue
canvas.drawRectangle(at:Point(x:0,y:0),width:400,height:600)

//yellow triangle
canvas.fillColor=lightyellow
canvas.drawCustomShape(with:[Point(x:55,y:450),Point(x:20,y:250),Point(x:150,y:325)])

//small curve
for i in stride(from:0,through:3,by:1){
    canvas.rotate(by:55)
    canvas.drawRoundedRectangle(at:Point(x:250+i*21,y:75-i*30), width:35, height:7)
    canvas.rotate(by:-55)
    canvas.rotate(by:35)
    canvas.drawRoundedRectangle(at:Point(x:235+i*30,y:137-i*21),width:7,height:35)
    canvas.rotate(by:-35)
}

//big curve
for i in stride(from:0,through:3,by:1){
    canvas.rotate(by:145)
    canvas.drawRoundedRectangle(at:Point(x:-30-i*37,y:-580+i*52),width:65,height:15)
    canvas.rotate(by:-145)
    canvas.rotate(by:125)
    canvas.drawRoundedRectangle(at:Point(x:163-i*52,y:-552+i*37),width:15,height:65)
    canvas.rotate(by:-125)
}

//white triangle
canvas.fillColor=Color.white
canvas.drawCustomShape(with:[Point(x:160,y:170),Point(x:150,y:25),Point(x:310,y:130)])

//white circle
canvas.drawEllipse(at:Point(x:200,y:475),width:140,height:140)

//circular dots top
canvas.fillColor=Color.black
for circle in stride(from:0,through:3,by:1){
    for angle in stride(from:0,through:360,by:20){
        let radius=62-circle*15
        let angle=CGFloat(angle)
        let x=CGFloat(radius)*cos(angle.asRadians())
        let y=CGFloat(radius)*sin(angle.asRadians())
        canvas.drawEllipse(at:Point(x:x+180,y:y+495),width:7,height:7)
    }
}
//circular dots bottom
for circle in stride(from:0,through:3,by:1){
    for angle in stride(from:0,through:360,by:20){
        let radius=62-circle*15
        let angle=CGFloat(angle)
        let x=CGFloat(radius)*cos(angle.asRadians())
        let y=CGFloat(radius)*sin(angle.asRadians())
        canvas.drawEllipse(at:Point(x:x+260,y:y+45),width:7,height:7)
    }
}

//pink dots
canvas.fillColor=pink
for vert in stride(from:0,through:220,by:20){
    for hori in stride(from:0,through:75,by:15){
        canvas.drawEllipse(at:Point(x:10+hori,y:590-vert),width:7,height:7)
    }
}

//triangle dots top
canvas.fillColor=Color.black
canvas.rotate(by:-55)
for vert in stride(from:0,through:4,by:1){
    for hori in stride(from:0,through:4-vert,by:1){
        canvas.drawEllipse(at:Point(x:-220+vert*6+hori*12,y:575-vert*12),width:5,height:5)
    }
}
canvas.rotate(by:55)

//triangle dots bottom
canvas.rotate(by:25)
for vert in stride(from:0,through:4,by:1){
    for hori in stride(from:0,through:4-vert,by:1){
        canvas.drawEllipse(at:Point(x:430+vert*6+hori*12,y:150-vert*12),width:5,height:5)
    }
}
canvas.rotate(by:-25)

//pink triangle
canvas.fillColor=pink
canvas.drawCustomShape(with:[Point(x:45,y:62),Point(x:80,y:100),Point(x:98,y:66)])
canvas.drawCustomShape(with:[Point(x:205,y:405),Point(x:237,y:393),Point(x:240,y:440)])
canvas.drawCustomShape(with:[Point(x:315,y:195),Point(x:365,y:170),Point(x:345,y:220)])
canvas.drawCustomShape(with:[Point(x:363,y:30),Point(x:390,y:47),Point(x:407,y:-10)])

//black rectangle
canvas.fillColor=Color.black
canvas.rotate(by:30)
canvas.drawRectangle(at:Point(x:87,y:33), width:20, height:20)
canvas.rotate(by:-30)

canvas.rotate(by:70)
canvas.drawRectangle(at:Point(x:460,y:-93), width:17, height:17)
canvas.rotate(by:-70)

canvas.rotate(by:-30)
canvas.drawRectangle(at:Point(x:190,y:315),width:20,height:20)
canvas.drawRectangle(at:Point(x:290,y:195),width:20,height:20)
canvas.rotate(by:30)

//text
canvas.textColor=lightyellow
canvas.drawText(message:"OK GO", at:Point(x:32,y:160), size:60, kerning:-5)
canvas.drawText(message:"OF THE BLUE COLOUR", at:Point(x:67,y:135), size:20, kerning:-1)
canvas.drawText(message:"OF THE SKY", at:Point(x:67,y:115), size:20, kerning:-1)

canvas.textColor=pink
canvas.drawText(message:"OK GO", at:Point(x:40,y:160), size:60, kerning:-5)
canvas.drawText(message:"OF THE BLUE COLOUR", at:Point(x:70,y:135), size:20, kerning:-1)
canvas.drawText(message:"OF THE SKY", at:Point(x:70,y:115), size:20, kerning:-1)

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
