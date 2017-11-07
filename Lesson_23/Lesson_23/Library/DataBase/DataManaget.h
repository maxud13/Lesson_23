//
//  DataManaget.h
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "Report+CoreDataProperties.h"
#import "Nominatoin+CoreDataProperties.h"


@interface DataManaget : NSObject

+ (id)storage;
- (NSManagedObjectContext*)context;
- (void)saveContext;

@end
