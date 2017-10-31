//
//  Report+CoreDataProperties.m
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//
//

#import "Report+CoreDataProperties.h"

@implementation Report (CoreDataProperties)

+ (NSFetchRequest<Report *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Report"];
}

@dynamic name;
@dynamic nominations;

@end
