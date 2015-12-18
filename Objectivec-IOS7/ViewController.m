//
//  ViewController.m
//  Objectivec-IOS7
//
//  Created by tho dang on 2015-12-15.
//  Copyright © 2015 Tho Dang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Section 12 , Objects in Udemy iOS 7
    // Using class method to create current time
    NSDate * date = [NSDate date];
    NSLog(@"Today is : %@",date);
    
    // Using instance method to how much seconds has passed since 1970
    double seconds = [date timeIntervalSince1970];
    NSLog(@"There are %f seconds since 1970", seconds);
    
    //Nested message sends
    NSDate * today = [[NSDate alloc]init];
    double secondsPerDay = 60 * 60 * 24 ;
    
    NSDate *tomorrow = [today dateByAddingTimeInterval:secondsPerDay ];
    
    NSLog(@"Today is %@", today);
    NSLog(@"Tomorrow is %@ ",tomorrow);
    
    // Type id - means pointer without the *
    // Store pointer to different object
//    id anyObject = [NSDate date];
//    anyObject = @"Apple";
    //  NSLog(@"Any Object is @%", anyObject);
    
    // NSSTrings , you can not change it after
    NSString *bob = @"bOB";
    NSString *sue = @"suer";
    NSString* MISA = @"misa";
    NSArray *bunchOfSuckyName = @[bob,sue,MISA];
    NSLog(@"friend name is : %@",bunchOfSuckyName);

    // NSmutable String , you can modify and update
    
    NSMutableArray *nameCanBeChanged = [@[bunchOfSuckyName] mutableCopy];
    NSUInteger count = [nameCanBeChanged count];
    NSLog(@" friend name cant be changed : %@",nameCanBeChanged);
    
    NSString *patty = @"Patty";
    [nameCanBeChanged addObject:patty];
    NSLog(@" I have %lu friends", [nameCanBeChanged count]);
   
    NSLog(@"Friend %@",nameCanBeChanged);
    
    // Loop through a name list  command line
    NSString *filename = @"usr/share/dict/propernames";
    NSString *fileString = [NSString stringWithContentsOfFile:filename encoding:NSUTF8StringEncoding error:nil];
    NSArray *nameArray = [fileString componentsSeparatedByString:@"\n"];
    for (NSString *namesss in nameArray) {
        NSLog(@"%@",namesss);
    }
    
    
    
    
    // NSArray can not be changed
    
//    NSArray *array1 = [[NSArray alloc]initWithObjects:@"John",@"John",@"John", nil];
//    NSLog(@"array1 = %@",[array1 description]);
//    
//    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
