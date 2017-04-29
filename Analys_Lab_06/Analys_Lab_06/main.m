//
//  main.m
//  Analys_Lab_06
//
//  Created by Admin on 15.04.17.
//  Copyright © 2017 Oleg Kiselevich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Analyser.h"

int main(int argc, const char * argv[]) {
    Analyser *analyser =[[Analyser alloc]init];
    
    [analyser foo:@"Kiselevich O O D\
     4 4"];
    
    return 0;
}
