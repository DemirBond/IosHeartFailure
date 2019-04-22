//
//  UITableView+Extensions.swift
//  HeartFailure
//
//  Created by Hoang on 4/22/19.
//  Copyright © 2019 IgorKhomiak. All rights reserved.
//

import UIKit

private var ResettingKey: UInt8 = 0

extension UITableView {

	func reloadDataThenPerform(_ closure: @escaping (() -> Void)) {
		CATransaction.begin()
		self.reloadData()
		CATransaction.commit()
		CATransaction.setCompletionBlock(closure)
	}


	var isResetting: Bool {
		get {
			return (objc_getAssociatedObject(self, &ResettingKey) as? Bool) ?? false
		}
		set {
			objc_setAssociatedObject(self, &ResettingKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_ASSIGN)
		}
	}
}
