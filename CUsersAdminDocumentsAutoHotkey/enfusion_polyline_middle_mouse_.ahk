MButton:: ; Trigger with middle mouse button
    MouseGetPos, xPos, yPos ; Store current mouse position
    Send, v ; Press v for vector tool
    Sleep, 3

    ; Calculate relative positions based on screen size
    vectorToolX := A_ScreenWidth * 1636 / 1920
    vectorToolY := A_ScreenHeight * 1013 / 1080
    newPolylineX := A_ScreenWidth * 1586 / 1920
    newPolylineY := A_ScreenHeight * 195 / 1080

    MouseClick, left, vectorToolX, vectorToolY ; Click vector tool bottom right
    Sleep, 3
    MouseClick, left, newPolylineX, newPolylineY ; Click new polyline
    Sleep, 3
    MouseMove, xPos, yPos, 0 ; Move back to original mouse position
    Sleep, 3
    MouseClick, left ; Place polyline on original mouse position
    Sleep, 3
    Send, {Delete} ; Press "Delete" key ; Enfusion always adds 2 points, the second point seems random, so this just deletes the second one