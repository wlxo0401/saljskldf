//
//  TaskEntity+CoreDataProperties.swift
//  CoreDataStudy
//
//  Created by kimjitae on 2022/03/08.
//
//

import Foundation
import CoreData


extension TaskEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskEntity> {
        return NSFetchRequest<TaskEntity>(entityName: "TaskEntity")
    }

    @NSManaged public var task: String?
    @NSManaged public var content: String?
    @NSManaged public var person: String?

}

extension TaskEntity : Identifiable {

}
