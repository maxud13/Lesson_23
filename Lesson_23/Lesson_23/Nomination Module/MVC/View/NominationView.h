//
//  NominationView.h
//  Lesson_23
//
//  Created by maxud on 02.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NominationModuleProtocole.h"

@interface NominationView : UIView <NominationViewOutput>

@property (nonatomic ,weak) id <NominationVeiwInput> userInterfaceInput;
@property (nonatomic ,weak) IBOutlet UITableView *tableView;

@end

