//
//  Corriere.h
//  Stoccaggio
//
//  Created by Mariana Anitoiu on 08/02/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Corriere : NSObject



-(id)initWithVolumeCorriere:(NSInteger) volumeCorriere
               pesoCorriere:(NSUInteger) pesoCorriere;



//id corriere
///@property(nonatomic,strong,readonly) NSString *idCorriere;

@property(nonatomic,readonly) NSInteger volumeCorriere;
@property(nonatomic,readonly) NSInteger pesoCorriere;
@end
