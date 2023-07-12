//
//  NSMenuItem+C++.cpp
//  AppKit Toolbox
//
//  Created by Stevo on 5/12/23.
//

#import "NSMenuItem+C++.h"

#import "NSString+C++.h"

//----------------------------------------------------------------------------------------------------------------------
// MARK: NSMenuItem extension

@implementation NSMenuItem (Cpp)

// MARK: Instance methods

//----------------------------------------------------------------------------------------------------------------------
+ (instancetype) menuItemWithString:(const CString&) string target:(NSObject*) target action:(SEL) action
		tag:(NSInteger) tag representedObject:(NSObject*) representedObject
{
	// Setup
	NSMenuItem*	menuItem =
						[[NSMenuItem alloc] initWithTitle:(__bridge NSString*) string.getOSString() action:action
								keyEquivalent:@""];
	menuItem.target = target;
	menuItem.tag = tag;
	menuItem.representedObject = representedObject;

	return menuItem;
}

//----------------------------------------------------------------------------------------------------------------------
+ (instancetype) menuItemWithString:(const CString&) string target:(NSObject*) target action:(SEL) action
		representedObject:(NSObject*) representedObject
{
	// Setup
	NSMenuItem*	menuItem =
						[[NSMenuItem alloc] initWithTitle:(__bridge NSString*) string.getOSString() action:action
								keyEquivalent:@""];
	menuItem.target = target;
	menuItem.representedObject = representedObject;

	return menuItem;
}

//----------------------------------------------------------------------------------------------------------------------
+ (instancetype) menuItemWithString:(const CString&) string tag:(NSInteger) tag
		representedObject:(NSObject*) representedObject
{
	// Setup
	NSMenuItem*	menuItem =
						[[NSMenuItem alloc] initWithTitle:(__bridge NSString*) string.getOSString() action:nil
								keyEquivalent:@""];
	menuItem.tag = tag;
	menuItem.representedObject = representedObject;

	return menuItem;
}

//----------------------------------------------------------------------------------------------------------------------
+ (instancetype) menuItemWithString:(const CString&) string tag:(NSInteger) tag
{
	// Setup
	NSMenuItem*	menuItem =
						[[NSMenuItem alloc] initWithTitle:(__bridge NSString*) string.getOSString() action:nil
								keyEquivalent:@""];
	menuItem.tag = tag;

	return menuItem;
}

//----------------------------------------------------------------------------------------------------------------------
+ (instancetype) menuItemWithString:(const CString&) string
{
	return [[NSMenuItem alloc] initWithTitle:(__bridge NSString*) string.getOSString() action:nil keyEquivalent:@""];
}

@end
