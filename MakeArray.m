//
//  MakeArray.m
//  Lesson 3
//
//  Created by mac on 16.04.15.
//
//

#import "MakeArray.h"

@implementation MakeArray

-(void) firstArray {
    NSMutableArray * array = [NSMutableArray new];
    
    NSString * iPhone = @"iPhone (МФА: [ˈaɪfoʊn], от англ. i — я и англ. phone — телефон, произносится — Айфон) — серия смартфонов, разработанных корпорацией Apple. Работают под управлением операционной системы iOS, представляющей собой упрощённую и оптимизированную для функционирования на мобильном устройстве версию Mac OS X.";
    NSString * iPad = @"Apple iPad является классическим примером интернет-планшетов и принципиально отличается от персональных компьютеров. Многие аналитики относят интернет-планшеты к устройствам посткомпьютерной эпохи, которые проще и понятнее привычных персональных компьютеров и со временем могут вытеснить ПК с ИТ-рынка.";
    NSString * iMac = @"iMac ([ˌaɪˈmæk], [ˌайˈмэк], рус. Аймэк) — серия моноблочных персональных компьютеров, созданная корпорацией Apple Inc. c самого начала в 1998 г. эта серия пользовалась популярностью и была для Apple основой сектора домашних компьютеров.";
    NSString * iWatch = @"Apple Watch — часы с дополнительной функциональностью (умные часы), созданные корпорацией Apple и представленные 9 сентября 2014 года. В них встроен фитнес-трекер (аналог Fitbit). Для их полноценной работы требуется смартфон семейства iPhone 5 или новее. Выход в продажу запланирован на апрель 2015 года.";
    
    NSString * cost = @"20000,25000,70000,50000";
    NSString * theThing = @"iPhone,iPad,iMac,iWatch";
    
    __block int i = 0;
    NSArray * arrayCost = [cost componentsSeparatedByString:@","];
    NSArray * arrayValue = [theThing componentsSeparatedByString:@","];
    
    [arrayCost enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSMutableDictionary * dict = [NSMutableDictionary new];
        [dict setObject:[arrayCost objectAtIndex:idx]forKey:@"price"];    // Реализация протокола
        [dict setObject:[arrayValue objectAtIndex:idx]forKey:@"value"];
        
        NSString * value = [arrayValue objectAtIndex:idx];
        
        if([value isEqualToString:@"iPhone"])
            [dict setObject:iPhone forKey:@"discr"];
        else if ([value isEqualToString:@"iPad"])
            [dict setObject:iPad forKey:@"discr"];
        else if([value isEqualToString:@"iMac"])
            [dict setObject:iMac forKey:@"discr"];
        else
            [dict setObject:iWatch forKey:@"discr"];
        
        [array addObject:dict];
        i++;
        
        if (stop && i == arrayCost.count)
            [self.delegate makeArrayFirstArrayReady:self FirstArray:array];
            
            }];
    }

-(void) secondArray {
    NSMutableArray * array = [NSMutableArray new];
    
    NSString * passat = @"Volkswagen Passat (paˈsat) — среднеразмерный автомобиль компании Volkswagen. Производится с 1973 года. В настоящее время автомобиль выпускают на заводах Volkswagen в Эмдене, Цвиккау (Германия) и других заводах. Название Пассат произошло от одноименного ветра.";
    NSString * touareg = @"Volkswagen Touareg — среднеразмерный кроссовер компании Volkswagen, производится с 2002 года. В настоящее время автомобиль выпускают на заводе Volkswagen в Братиславе и Калуге. Touareg стал третьим внедорожником в истории марки после Volkswagen Тур 82 (Kübelwagen) и Volkswagen Iltis.";
    NSString * phaeton = @"Volkswagen Phaeton (рус. Фольксваген Фаэтон) — первый автомобиль представительского (F) класса за всю 70-летнюю историю Volkswagen. С 2002 года производится ручная сборка на заводе Gläserne Manufaktur в Дрездене в Германии. Технически модель исполнена на базе представительских автомобилей Audi A8 и Bentley Continental Flying Spur. Прототип автомобиля, под рабочим названием Concept D, впервые был представлен в 1999 году на Франкфуртском автосалоне. С апреля 2007 года является первым автомобилем высшего класса, который с дизельным двигателем V6-TDI (V-образный турбо-дизель) выполнил нормы экологического стандарта евро-5.Название автомобиля происходит от имени героя греческой мифологии Фаэтона. Первоначально в транспорте фаэтонами назывались лёгкие открытые конные экипажи, в дальнейшем название перешло на легковые автомобили с мягким открывающимся верхом. Отдельные модели автомобилей с названием «Фаэтон» выпускались в разные годы начала XX века фирмами Škoda, Horch, Packard.";
    NSString * passatCC = @"Volkswagen Passat CC - четырёхдверное купе, сконструированное на базе VW Passat B6 (Typ 3C), выпускается с 2008 г. на заводе концерна Фольксваген в городе Эмден.Буквы -CC- в названии модели расшифровываются как комфорт-купе (нем. Comfort-Coupé), к которому якобы тяготеет более расплющенная, спортивная форма кузова модели. Однако эта модель задумывалась руководством концерна Фольксваген не как модификация обычного Passat'а, а как авто другого, более комфортного класса - для заполнения рыночной ниши между классическим Passat'ом и моделью Phaeton.";
    
    NSString * theModel = @"Passat,Passat CC,Touareg,Phaeton";
    NSString * thePrice = @"1300000,1500000,2500000,4400000";
    
    __block int i = 0;
    
    NSArray * arrayCost = [thePrice componentsSeparatedByString:@","];
    NSArray * arrayValue = [theModel componentsSeparatedByString:@","];
    
    [arrayCost enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSMutableDictionary * dict = [NSMutableDictionary new];
        [dict setObject:[arrayCost objectAtIndex:idx]forKey:@"price"];    // Реализация протокола
        [dict setObject:[arrayValue objectAtIndex:idx]forKey:@"value"];
        
        NSString * model = [arrayValue objectAtIndex:idx];
        
        if([model isEqualToString:@"Passat"])
            [dict setObject:passat forKey:@"discr"];
        else if ([model isEqualToString:@"Passat CC"])
            [dict setObject:passatCC forKey:@"discr"];
        else if([model isEqualToString:@"Touareg"])
            [dict setObject:touareg forKey:@"discr"];
        else
            [dict setObject:phaeton forKey:@"discr"];
        
        [array addObject:dict];
        i++;
        if (stop && i == arrayCost.count)
            [self.delegate makeArraySecondArrayReady:self SecondArray:array];
    }];
    
}


@end
