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
#import "Report+CoreDataProperties.h"

@interface ReportViewController () <ReportModelOutput, ReportVeiwInput,UITableViewDelegate,UITableViewDataSource>


@property (nonatomic ,strong)ReportModel *model;
@property (nonatomic ,weak)IBOutlet ReportView *contentView;

@end

@implementation ReportViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setup];
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
    
    [self.model needToReloadData];
    self.contentView.tableView.allowsMultipleSelectionDuringEditing = NO;
}

#pragma mark - Table View DataSourse

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.model reportCount];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    Report *report = [self.model reportAtIndex:indexPath.row];
    cell.textLabel.text = report.name;
    
    return cell;
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.model removeReportAtINdex:indexPath.row];
    }
}

#pragma mark - Report View Input Protocol

-(void) addReportButtonWasTapped
{
    [self.model createNewTestReport];
}
#pragma mark - Report Model Output Protocole


-(void)dataDidReload
{
    [self.contentView.tableView reloadData];
}

-(void)reportDidRemove
{
    [self.contentView.tableView reloadData];
}


@end
