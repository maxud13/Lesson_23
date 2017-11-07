//
//  ReportView.m
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "ReportView.h"

@implementation ReportView

- (IBAction)addNewReportButtonAction:(id)sender
{
    if ([self.userInterfaceInput respondsToSelector:@selector(addReportButtonWasTapped)])
    {
        [self.userInterfaceInput addReportButtonWasTapped];
    }
}


@end
