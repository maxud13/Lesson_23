//
//  ReportModuleProtocol.h
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ReportModelInput <NSObject>

-(NSInteger)reportCount;
-(id)reportAtIndex:(NSInteger)index;

-(void)createNewTestReport;
-(void)needToReloadData;

-(void)removeReportAtINdex:(NSInteger)index;

@end

@protocol ReportModelOutput <NSObject>

-(void)dataDidReload;

-(void)reportDidRemove;

@end

@protocol ReportVeiwInput <NSObject>

-(void)addReportButtonWasTapped;

@end

@protocol ReportViewOutput <NSObject>

@end
