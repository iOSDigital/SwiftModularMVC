//
//  MessagesTableController.swift
//  MessageOfTheDay
//
//  Created by Paul Derbyshire on 22/03/2019.
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import UIKit

class MessagesTableController: UITableViewController {
	
	private var messagesArray: Array<MessageItem> = []
	
	
	
	public class func controllerWithMessages(_ messages: Array<MessageItem>) -> MessagesTableController {
		let controller = UIStoryboard.init(name: "MessagesTableController", bundle: nil).instantiateInitialViewController() as! MessagesTableController
		controller.messagesArray = messages
		return controller
	}
	
	
	// Change the message on the 5th item
//	@IBAction func buttonPressed(_ sender: AnyObject) {
//		var messageItem = messagesArray[4]
//		messageItem.message = "I changed the message!"
//		guard let cell = self.tableView.cellForRow(at: IndexPath(row: 4, section: 0)) as? MessagesTableCell else { return }
//		cell.messageItem = messageItem
//	}
	
	
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
	
	
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messagesArray.count
    }
	
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MessagesTableCell
		cell.messageItem = messagesArray[indexPath.row]
        return cell
    }
	
	
}
