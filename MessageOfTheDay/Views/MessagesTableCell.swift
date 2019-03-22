//
//  MessagesTableCell.swift
//  MessageOfTheDay
//
//  Copyright © 2019 DERBS.CO. All rights reserved.
//

import UIKit

class MessagesTableCell: UITableViewCell {
	
	@IBOutlet var labelMessage: UILabel?
	@IBOutlet var labelCategory: UILabel?

	var message: Message? {
		didSet {
			didSet()
		}
	}
	
	
	private func didSet() {
		labelMessage?.text = message?.message
		labelCategory?.text = message?.category
	}
	
	
	
}
