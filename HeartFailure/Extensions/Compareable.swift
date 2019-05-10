//
//  Compareable.swift
//  HeartFailure
//
//  Created by Hoang on 5/10/19.
//  Copyright © 2019 IgorKhomiak. All rights reserved.
//


import Foundation

extension Equatable {
	func oneOf(other: Self...) -> Bool {
		return other.contains(self)
	}
}
