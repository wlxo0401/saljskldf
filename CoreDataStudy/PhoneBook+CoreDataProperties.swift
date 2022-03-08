//
//  PhoneBook+CoreDataProperties.swift
//  CoreDataStudy
//
//  Created by kimjitae on 2022/03/08.
//
//

import Foundation
import CoreData


extension PhoneBook {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PhoneBook> {
        return NSFetchRequest<PhoneBook>(entityName: "PhoneBook")
    }

    @NSManaged public var personName: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var friend: Bool

}

extension PhoneBook : Identifiable {

}
