//
//  ReportView.h
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReportModuleProtocol.h"

@interface ReportView : UIView <ReportViewOutput>

@property (nonatomic ,weak) id <ReportVeiwInput> userInterfaceInput;
@property (nonatomic ,weak) IBOutlet UITableView *tableView;

@end
