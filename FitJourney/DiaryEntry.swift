//
//  DiaryEntry.swift
//  FitJourney
//
//  Created by Marquis Dennis on 4/19/16.
//  Copyright © 2016 Marquis Dennis. All rights reserved.
//

import Foundation
import CoreData


class DiaryEntry: NSManagedObject {
	var sectionName: String {
		let entrySectionDate = NSDate(timeIntervalSince1970: self.date)
		
		let formatter = NSDateFormatter()
		formatter.dateFormat = "MMM yyyy"
		
		
		return formatter.stringFromDate(entrySectionDate)
	}
	
	enum DiaryEntryMood: Int {
		case DiaryMoodGood = 0
		case DiaryMoodAverage = 1
		case DiaryMoodBad = 2
	}

	override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
		super.init(entity: entity, insertIntoManagedObjectContext: context)
	}
	
	init(context: NSManagedObjectContext) {
		let entryEntity = NSEntityDescription.entityForName("DiaryEntry", inManagedObjectContext: context)!
		super.init(entity: entryEntity, insertIntoManagedObjectContext: context)
	}
}
