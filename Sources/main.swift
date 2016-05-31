import SwiftGtk

let app = Application(applicationId: "com.example.application")
app.run { window in
    window.title = "Hello World"
    window.defaultSize = Size(width: 400, height: 400)
    window.resizable = true

    let button = Button(label: "Press Me")
        button.clicked = { _ in
        let newWindow = Window(windowType: .TopLevel)
        newWindow.title = "Just a window"
        newWindow.defaultSize = Size(width: 200, height: 200)
        let labelPressed = Label(text: "Oh, you pressed the button.")
        newWindow.add(widget:labelPressed)
        newWindow.showAll()
    }

    window.add(widget:button)
}
    