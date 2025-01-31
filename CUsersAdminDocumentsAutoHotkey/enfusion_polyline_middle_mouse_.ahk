MButton:: ; Trigger with middle mouse button
    MouseGetPos, xPos, yPos ; Store current mouse position
    Send, v ; press v for vector tool
    Sleep, 3 ; 
    MouseClick, left, 1636, 1013 ; Click vector tool bottom right
    Sleep, 3 ; e
    MouseClick, left, 1586, 195 ; Click new polyline
    Sleep, 3 ; 
    MouseMove, xPos, yPos, 0 ; Move back to original mouse position
    Sleep, 3
    MouseClick, left ; Place polyline on original mouse position
    Sleep, 3
    Send, {Delete} ; Press "Delete" key ; enfusion always adds 2 points the second point seems random so this just deletes the second one
Return