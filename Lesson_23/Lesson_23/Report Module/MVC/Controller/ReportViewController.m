//
//  ReportViewController.m
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "ReportViewController.h"
#import "ReportModel.h"
#import "ReportView.h"
#import "ReportModuleProtocol.h"

@interface ReportViewController () <ReportModelOutput, ReportVeiwInput,UITableViewDelegate,UITableViewDataSource>


@property (nonatomic ,strong)ReportModel *model;
@property (nonatomic ,weak)IBOutlet ReportView *contentView;

@end

@implementation ReportViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Lazy Init

- (ReportModel*)model
{
    if (!_model)
    {
        _model = [ReportModel new];
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
