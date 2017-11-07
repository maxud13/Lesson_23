//
//  DataManaget+Storage.m
//  Lesson_23
//
//  Created by maxud on 03.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "DataManaget+Storage.h"
#import "Report+CoreDataProperties.h"
#import "Nominatoin+CoreDataProperties.h"

@implementation DataManaget (Storage)

- (Report*)createReport
{
    Report *report = [NSEntityDescription insertNewObjectForEntityForName:@"Report" inManagedObjectContext:self.context];
    report.name = @"Test Report";
    return report;
}
- (NSArray*)allReports
{
    NSError *error = nil;
    NSFetchRequest *request = [Report fetchRequest];
    
    NSArray *result = [self.context executeFetchRequest:request error:&error];
    
    if (!error)
    {
        return result;
    }
    
    return nil;
}
    


-(void)removeReport:(Report*)report
{
    [self.context deleteObject:report];
}

@end
