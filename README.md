# SwiftModularMVC
Foundations of a modular MVC iOS app using storyboards.

How to build a modular iOS app in Swift, using MVC, dependency injection, and storyboards.

The message model is a model and a DataSource, providing the app with an array of Message objects. This could be CoreData, Realm, or whatever you like instead.

The main ViewController loads the data, instantiates a MessagesTableController (in a separate storyboard), injecting the data in.

MessagesTableController is unaware and independent of the DataSource, which means it is modular and un-coupled.

MessagesTableController simply passes the Message object to the table cell in cellForRowAtIndexPath. The controller does absolutely no view-related work.

MessagesTableCell sets the labels in the cell view when the Message object is set.
