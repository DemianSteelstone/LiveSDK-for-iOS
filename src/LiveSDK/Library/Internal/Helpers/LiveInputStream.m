//
//  LiveInputStream.m
//  DownloaderPlus
//
//  Created by Kain on 28.05.15.
//  Copyright (c) 2015 Macsoftex. All rights reserved.
//

#import "LiveInputStream.h"

@interface LiveInputStream ()

@property (nonatomic,strong) NSString *filePath;
@property (nonatomic,strong) NSURL *fileURL;

@end

@implementation LiveInputStream

-(instancetype)initWithFileUrl:(NSURL *)fileURL fileSize:(long long)size
{
    if (self = [super init])
    {
        _fileURL = fileURL;
        _fileSize = size;
    }
    return self;
}

-(instancetype)initWithFilePath:(NSString *)filePath fileSize:(long long)size
{
    if (self = [super init])
    {
        _filePath = filePath;
        _fileSize = size;
    }
    return self;
}

-(NSInputStream *)createInputStream
{
    if (_fileURL)
    {
        return [NSInputStream inputStreamWithURL:_fileURL];
    }
    else if (_filePath.length > 0)
    {
        return [NSInputStream inputStreamWithFileAtPath:_filePath];
    }
    return nil;
}

@end
