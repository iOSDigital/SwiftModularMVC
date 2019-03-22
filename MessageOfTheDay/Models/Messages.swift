//
//  MyDataSource.swift
//  MessageOfTheDay
//
//  Created by Paul Derbyshire on 22/03/2019.
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import Foundation


struct MessageItem {
	var message: String?
	var category: String?
}


class Message {
	
	
	class func messages() -> Array<MessageItem> {
		var dataArray: Array <MessageItem> = []
		for index in 1...50 {
			let item = MessageItem(message: "Hello world \(index)" , category: "Category \(index)")
			dataArray.append(item)
		}
		return dataArray
	}
	
	
	
	class func messagesInCategory(category: String) -> Array<MessageItem> {
		return self.messages().filter { (message) -> Bool in
			return message.category == category
		}
	}
	
	
}
