//
//  Pacco.h
//  Stoccaggio
//
//  Created by Mariana Anitoiu on 08/02/17.
//  Copyright © 2017 Mariana Anitoiu. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, Materiale){
    MaterialeFerro = 0,
    MaterialePlastica =1,
    MaterialeCarta = 2
    
    
};

@interface Pacco : NSObject

///COSTRUTTORE

-(id)initWithCodice:(NSString *)codice
           mittente:(NSString *)mittente
       destinatario:(NSString *)destinatario
          lunghezza:(NSInteger )lunghezza
            altezza:(NSInteger) altezza
         profondita:(NSInteger) profondita
       andMateriale:(Materiale)materiale;



/// il codice idndentificativo

@property (nonatomic,strong, readonly) NSString *codice;

///Il mittente
@property(nonatomic, strong, readonly) NSString *mittente;

///Il destinatario

@property(nonatomic, strong) NSString *destinatario;


///lunghezza pacco
@property(nonatomic, readonly) NSInteger lunghezza;


///profondita pacco
@property(nonatomic, readonly) NSInteger profondita;

///altezza pacco
@property(nonatomic, readonly)NSInteger altezza;

///volume pacco
@property(nonatomic, readonly)NSInteger volume;

///peso pacco
@property(nonatomic,readonly)NSInteger peso;

///materiale contenuto
@property(nonatomic, readonly) Materiale materiale;  //si fa riferimento alla ENUM definita in alto

@end
