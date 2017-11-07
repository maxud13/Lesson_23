//
//  DataManaget+Storage.h
//  Lesson_23
//
//  Created by maxud on 03.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "DataManaget.h"

@class Report, Nominatioin;

@interface DataManaget (Storage)

-(Report*)createReport;
-(NSArray*)allReports;
-(void)removeReport:(Report*)report;

@end
