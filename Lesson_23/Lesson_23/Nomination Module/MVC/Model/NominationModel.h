//
//  NominationModel.h
//  Lesson_23
//
//  Created by maxud on 02.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NominationModuleProtocole.h"

@interface NominationModel : NSObject

@property (nonatomic ,weak) id <NominationModelOutput> modelOutput;

@end
