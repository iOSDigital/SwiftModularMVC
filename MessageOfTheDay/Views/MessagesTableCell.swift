//
//  MessagesTableCell.swift
//  MessageOfTheDay
//
//  Created by Paul Derbyshire on 22/03/2019.
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import UIKit

class MessagesTableCell: UITableViewCell {
	
	@IBOutlet var labelMessage: UILabel?
	@IBOutlet var labelCategory: UILabel?

	var messageItem: MessageItem? {
		didSet {
			didSet()
		}
	}
	
	
	private func didSet() {
		labelMessage?.text = messageItem?.message
		labelCategory?.text = messageItem?.category
	}
	
	
	
}
