//
//  DataManaget.m
//  Lesson_23
//
//  Created by maxud on 31.10.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "DataManaget.h"

@interface DataManaget ()

@property (nonatomic, strong, readwrite) NSPersistentContainer *persistentContainer;

@end

@implementation DataManaget

+ (id)storage
{
    static DataManaget *dataStorage = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataStorage = [[self alloc] init];
    });
    return dataStorage;
}

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@""];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    return _persistentContainer;
}

#pragma mark - CoreData NSManagedObjectContext

- (void)saveContext
{
    NSError *error = nil;
    if (self.context != nil)
    {
        if ([self.context hasChanges] && ![self.context save:&error])
        {
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

- (NSManagedObjectContext*)context
{
    return self.persistentContainer.viewContext;
}

@end
