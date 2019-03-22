//
//  MyDataSource.swift
//  MessageOfTheDay
//
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import Foundation


class Message {
	
	// Could be a struct...
	var message: String?
	var category: String?
	
	init(message: String, category: String) {
		self.message = message
		self.category = category
	}
	
	
	
	
	
	class func messages() -> Array<Message> {
		var dataArray: Array <Message> = []
		for index in 1...50 {
			let item = Message(message: "Hello world \(index)" , category: "Category \(index)")
			dataArray.append(item)
		}
		return dataArray
	}
	
	
	
	class func messagesInCategory(category: String) -> Array<Message> {
		return self.messages().filter { (message) -> Bool in
			return message.category == category
		}
	}
	
	
}
