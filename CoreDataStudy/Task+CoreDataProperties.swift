//
//  Task+CoreDataProperties.swift
//  CoreDataStudy
//
//  Created by kimjitae on 2022/03/08.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var task: NSObject?
    @NSManaged public var person: NSObject?
    @NSManaged public var content: NSObject?

}

extension Task : Identifiable {

}
