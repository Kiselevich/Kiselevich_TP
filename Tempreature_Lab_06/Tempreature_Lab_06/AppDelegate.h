//
//  AppDelegate.h
//  Tempreature_Lab_06
//
//  Created by Admin on 15.04.17.
//  Copyright © 2017 Oleg Kiselevich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

