//
//  CoreDataStack.swift
//  TodoApplication3
//
//  Created by Tatsuya Moriguchi on 7/3/18.
//  Copyright © 2018 Becko's Inc. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    // create properties
    var container: NSPersistentContainer {
        let container = NSPersistentContainer(name: "Todos")
        container.loadPersistentStores { (description, error) in
            guard error == nil else {
                print("Error: \(error!)")
                return
            }
        }
        return container
    }
    
    var managedContext: NSManagedObjectContext {
        return container.viewContext
    }
}
