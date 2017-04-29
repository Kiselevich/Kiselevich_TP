//
//  Analyser.m
//  Analys_Lab_06
//
//  Created by Admin on 15.04.17.
//  Copyright © 2017 Oleg Kiselevich. All rights reserved.
//

#import "Analyser.h"

@implementation Analyser

- (void)foo:(NSString *)bar
{
    NSArray *words = [bar componentsSeparatedByString:@" "];
    NSMutableDictionary *firstDictionary = [[NSMutableDictionary alloc]init];
    for(NSString* word in words)
    {
        NSNumber *repetitions = [firstDictionary objectForKey:word];
        
        if(repetitions)
        {
            NSNumber *nextValue = [NSNumber numberWithInt:[repetitions intValue]+1];
            [firstDictionary setObject:nextValue forKey:word];
        }
        else
        {
            [firstDictionary setObject:[NSNumber numberWithInt:1] forKey:word];
        }
    }
    NSLog(@"%@",firstDictionary);
}

@end
