//
//  Nominatoin+CoreDataProperties.h
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//
//

#import "Nominatoin+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Nominatoin (CoreDataProperties)

+ (NSFetchRequest<Nominatoin *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) BOOL type;
@property (nullable, nonatomic, retain) Report *report;

@end

NS_ASSUME_NONNULL_END
