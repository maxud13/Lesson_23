//
//  ReportModel.h
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReportModuleProtocol.h"

@interface ReportModel : NSObject <ReportModelInput>

@property (nonatomic ,weak) id <ReportModelOutput> modelOutput;

@end
