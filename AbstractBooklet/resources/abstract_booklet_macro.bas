Sub Main

dim operation as string
dim service as string

dim cursor as object
dim dispatcher as object
dim controller as object

operation =  ".uno:SetMinimalColumnWidth"
service = "com.sun.star.frame.DispatchHelper"

dispatcher = createUnoService(service)
controller = ThisComponent.getCurrentController()
    
for index = 0 to ThisComponent.TextTables.count - 1
    
    controller.select(ThisComponent.TextTables(index))
    
    cursor = controller.getViewCursor()
    
	cursor.gotoEnd(True)
	cursor.gotoEnd(True)

    dispatcher.executeDispatch(controller.Frame, operation, "", 0, Array())
next

end sub
