//
//  Nominatoin+CoreDataProperties.m
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//
//

#import "Nominatoin+CoreDataProperties.h"

@implementation Nominatoin (CoreDataProperties)

+ (NSFetchRequest<Nominatoin *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Nominatoin"];
}

@dynamic name;
@dynamic type;
@dynamic report;

@end
