//
//  MessagesTableController.swift
//  MessageOfTheDay
//
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import UIKit

class MessagesTableController: UITableViewController {
	
	private var messagesArray: Array<Message> = []
	
	
	
	
	public class func controllerWithMessages(_ messages: Array<Message>) -> MessagesTableController {
		let controller = UIStoryboard.init(name: "MessagesTableController", bundle: nil).instantiateInitialViewController() as! MessagesTableController
		controller.messagesArray = messages
		return controller
	}
	
	
	// Change the message on the 5th item
	// I'm emulating a change in the data in the background
	// If you listened to a store, like CoreData or Realm, the table would update without a single line of code...
	@IBAction func buttonPressed(_ sender: AnyObject) {
		messagesArray[4].message = "I changed the message!"
		tableView.reloadRows(at: [IndexPath(row: 4, section: 0)], with: .automatic)
	}
	
	
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
	
	
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messagesArray.count
    }
	
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MessagesTableCell
		cell.message = messagesArray[indexPath.row]
        return cell
    }
	
	
}
