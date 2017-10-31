//
//  Report+CoreDataProperties.h
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//
//

#import "Report+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Report (CoreDataProperties)

+ (NSFetchRequest<Report *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Nominatoin *> *nominations;

@end

@interface Report (CoreDataGeneratedAccessors)

- (void)addNominationsObject:(Nominatoin *)value;
- (void)removeNominationsObject:(Nominatoin *)value;
- (void)addNominations:(NSSet<Nominatoin *> *)values;
- (void)removeNominations:(NSSet<Nominatoin *> *)values;

@end

NS_ASSUME_NONNULL_END
