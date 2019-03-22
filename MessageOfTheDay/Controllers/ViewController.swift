//
//  ViewController.swift
//  MessageOfTheDay
//
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
	
	let messagesArray = Message.messages()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	
	@IBAction func openMessageController(_ sender: AnyObject) {
		let controller = MessagesTableController.controllerWithMessages(self.messagesArray)
		self.navigationController?.pushViewController(controller, animated: true)
	}


}

