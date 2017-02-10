//
//  ViewController.m
//  Stoccaggio
//
//  Created by Mariana Anitoiu on 08/02/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import "ViewController.h"
#import "Pacco.h"
#import "Corriere.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *arrayPacchi = [[NSMutableArray alloc] init];
    NSMutableArray *arrayCorriere = [[NSMutableArray alloc] init];
    NSInteger volumeTotale = 0;
    for(int i = 0; i <100; i++){
      int index = [self getRandomNumberBetween:0 to:100];
        Pacco *pacco = [[Pacco alloc] initWithCodice:[NSString  stringWithFormat:@"%i",index]
                                            mittente:@"gigi"
                                        destinatario:@"bianco"
                                           lunghezza:[self getRandomNumberBetween:0 to:100]
                                             altezza:[self getRandomNumberBetween:0 to:100]
                                          profondita:[self getRandomNumberBetween:0 to:100]
                                        andMateriale:[self getRandomNumberBetween:0 to:3]];
                        
        [arrayPacchi addObject:pacco];
        volumeTotale += pacco.volume;
        
    } // for
    
    
    

       // pacco.codice = @"0000001";
    
        NSLog(@"Codice pacco: %@",arrayPacchi);
        NSLog(@"Volume totale: %li",(long)volumeTotale);
    
        Corriere *corriere = [[Corriere alloc] initWithVolumeCorriere:[self getRandomNumberBetween:100000 to:10000000]
                              pesoCorriere:[self getRandomNumberBetween:100000 to:1000000]];
    
        NSLog(@"Volume corriere: %li",corriere.volumeCorriere);
    NSLog(@"Peso corriere: %li", corriere.pesoCorriere);
    
    int numeroCorrieri ;
    if(volumeTotale > corriere.volumeCorriere){
         numeroCorrieri = volumeTotale / corriere.volumeCorriere;
        
        NSLog(@"Il vomule 100 pacchi non ci sta nel corriere, servono %i:",numeroCorrieri+1);
        
    }else{
        
        
        
        NSLog(@"Il volume ci sta!");
    }
    
    
}


-(int) getRandomNumberBetween:(int)from to:(int)to {
    
    return (int)from + arc4random()% (to - from +1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
