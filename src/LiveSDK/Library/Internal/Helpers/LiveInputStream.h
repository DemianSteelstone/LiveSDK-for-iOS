//
//  LiveInputStream.h
//  DownloaderPlus
//
//  Created by Kain on 28.05.15.
//  Copyright (c) 2015 Macsoftex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LiveInputStream : NSObject

@property (nonatomic,readonly) long long fileSize;

-(instancetype)initWithFileUrl:(NSURL *)fileURL fileSize:(long long)size;
-(instancetype)initWithFilePath:(NSString *)filePath fileSize:(long long)size;

-(NSInputStream *)createInputStream;

@end
