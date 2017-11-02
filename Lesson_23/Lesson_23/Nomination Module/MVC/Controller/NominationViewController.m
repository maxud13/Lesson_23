//
//  NominationViewController.m
//  Lesson_23
//
//  Created by maxud on 02.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NominationViewController.h"
#import "NominationModel.h"
#import "NominationModuleProtocole.h"
#import "NominationView.h"


@interface NominationViewController () <NominationModelOutput, NominationVeiwInput,UITableViewDelegate,UITableViewDataSource>


@property (nonatomic ,strong)NominationModel *model;
@property (nonatomic ,weak)IBOutlet NominationView *contentView;

@end

@implementation NominationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Lazy Init

- (NominationModel*)model
{
    if (!_model)
    {
        _model = [NominationModel new];
    }
    return _model;
}
#pragma mark - Private Methods

-(void)setup
{
    self.model.modelOutput = self;
    self.contentView.userInterfaceInput = self;
}

#pragma mark - Table View DataSourse

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    return cell;
    
}

@end


