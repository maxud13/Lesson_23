//
//  ReportModel.m
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "ReportModel.h"
#import "DataManaget+Storage.h"

@interface ReportModel ()

@property (nonatomic, strong) NSMutableArray *reportArray;

@end


@implementation ReportModel

#pragma mark - Report Model Input Protocol

-(NSInteger)reportCount
{
    return self.reportArray.count;
}

-(id)reportAtIndex:(NSInteger)index
{
    return [self.reportArray objectAtIndex:index];
}

-(void)createNewTestReport
{
    [[DataManaget storage]createReport];
    [[DataManaget storage]saveContext];
    [self reloadData];
    [self.modelOutput dataDidReload];
}
-(void)needToReloadData
{
    [self reloadData];
    [self.modelOutput dataDidReload];
}

#pragma mark - Private Method

-(void)reloadData
{
    self.reportArray = [NSMutableArray arrayWithArray:[[DataManaget storage] allReports]];
}

@end
