//
//  Corriere.m
//  Stoccaggio
//
//  Created by Mariana Anitoiu on 08/02/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "Corriere.h"

@implementation Corriere

-(id)initWithVolumeCorriere:(NSInteger)volumeCorriere
               pesoCorriere:(NSUInteger)pesoCorriere{
    self = [super init];
    
    if(self){
        _volumeCorriere = volumeCorriere;
        _pesoCorriere = pesoCorriere;
    }
    return self;
}

@end
