//
//  ViewController.m
//  NSSet
//
//  Created by Slava on 4/16/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc]init];
    // Create NSArray, containing 30 objects.
    
    NSArray *array = @[@2,@4,@6,@8,@2,@1,@22,@32,@4,@56,@9,@3,@2,@43,@55,@6,@2,@44,@26,@22,@37,@77,@2,@5,@6,@9,@33,@2,@29];
   
    // Use NSSet to exclude duplicates from array.
    
    NSSet *set = [NSSet setWithArray:array];
    
    [array retain];
    [array release];
    
    NSLog(@"%@",set);
    
   //  Check what is faster: Create an array of 100 numbers.
    
    NSMutableArray* array100 = [NSMutableArray array];
    
    for (int i = 1; i < 101; i++) {
        NSNumber *number = [NSNumber numberWithInt:i];
        
        [number autorelease];
        
        [array100 addObject:number];
    }
    
    
    NSNumber* number = [NSNumber numberWithInt:74];
   
   // Check whether number 74 is contained inside an array.
    
    for (NSNumber* a in array100) {
        if ( a == number) {
            NSLog(@"%@ - yes",a);
        }
    }

   
   // Transform array into NSSet and check whether number 74 is contained inside NSSet.
    
    NSSet *set2 = [NSSet setWithArray:array100];
    
    if ([set2 containsObject:number]) {
        NSLog(@"Yes");
    }
    
    
    
    [pool release];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
