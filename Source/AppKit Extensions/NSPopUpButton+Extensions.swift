//
//  NSPopUpButton+Extensions.swift
//  AppKit Toolbox
//
//  Created by Stevo on 4/14/23.
//  Copyright © 2023 Stevo Brock. All rights reserved.
//

import AppKit

//----------------------------------------------------------------------------------------------------------------------
// MARK: NSPopUpButton extension
extension NSPopUpButton {

	// MARK: Properties
	@objc	var	selectedRepresentedObject :Any? { self.selectedItem?.representedObject }

	// MARK: Instance methods
	//------------------------------------------------------------------------------------------------------------------
	@objc func add(item :NSMenuItem) { self.menu?.addItem(item) }

	//------------------------------------------------------------------------------------------------------------------
	@objc func addItem(title :String, tag :Int) {
		// Add item and set tag
		addItem(withTitle: title)
		self.lastItem!.tag = tag
	}

	//------------------------------------------------------------------------------------------------------------------
	@objc func addItem(title :String, representedObject :Any) {
		// Add item and set associated value
		addItem(withTitle: title)
		self.lastItem!.representedObject = representedObject
	}

	//------------------------------------------------------------------------------------------------------------------
	@objc func addItem(title :String, target :AnyObject, action :Selector) {
		// Add item and set associated value
		addItem(withTitle: title)
		self.lastItem!.target = target
		self.lastItem!.action = action
	}

	//------------------------------------------------------------------------------------------------------------------
	@objc func addSubmenu(_ submenu :NSMenu, withTitle title :String) {
		// Add submenu
		addItem(withTitle: title)
		self.lastItem!.submenu = submenu
	}

	//------------------------------------------------------------------------------------------------------------------
	@objc func menuItem(matchingProc :(_ menuItem :NSMenuItem) -> Bool, deep :Bool = false) -> NSMenuItem? {
		// Call through to menu
		return self.menu?.menuItem(matchingProc: matchingProc, deep: deep)
	}

	//------------------------------------------------------------------------------------------------------------------
	@objc func menuItem(representedObject :Any, deep :Bool = false) -> NSMenuItem? {
		// Call through to menu
		return self.menu?.menuItem(representedObject: representedObject, deep: deep)
	}
}
