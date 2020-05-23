//
//  MXGeometry.m
//  MXGeometry
//
//  Created by MasterXu on 2020/5/23.
//

#import "MXGeometry.h"

@implementation MXGeometry

#pragma mark - CGFloat

+ (CGFloat)onePixel
{
    CGFloat scale = UIScreen.mainScreen.scale;
    NSAssert(scale > 0, @"scale must greater than zero");
    return 1.0/scale;
}

+ (CGFloat)floorToPixel:(CGFloat)value
{
    CGFloat scale = UIScreen.mainScreen.scale;
    return floor(value*scale)/scale;
}

+ (CGFloat)ceilToPixel:(CGFloat)value
{
    CGFloat scale = UIScreen.mainScreen.scale;
    return ceil(value*scale)/scale;
}

#pragma mark - CGPoint

+ (CGPoint)onePixelPoint
{
    return CGPointMake([self onePixel], [self onePixel]);
}

+ (CGPoint)floorToPoint:(CGPoint)point
{
    return CGPointMake([self floorToPixel:point.x], [self floorToPixel:point.y]);
}

+ (CGPoint)ceilToPoint:(CGPoint)point
{
    return CGPointMake([self ceilToPixel:point.x], [self ceilToPixel:point.y]);
}

#pragma mark - CGSize

+ (CGSize)onePixelSize
{
    return CGSizeMake([self onePixel], [self onePixel]);
}

+ (CGSize)floorToSize:(CGSize)size
{
    return CGSizeMake([self floorToPixel:size.width], [self floorToPixel:size.height]);
}

+ (CGSize)ceilToSize:(CGSize)size
{
    return CGSizeMake([self ceilToPixel:size.width], [self ceilToPixel:size.height]);
}

#pragma mark - CGRect

+ (CGRect)onePixelRect
{
    return CGRectMake([self onePixel], [self onePixel], [self onePixel], [self onePixel]);
}

+ (CGRect)floorToRect:(CGRect)rect
{
    return CGRectMake([self floorToPixel:CGRectGetMinX(rect)],
                      [self floorToPixel:CGRectGetMinY(rect)],
                      [self floorToPixel:CGRectGetWidth(rect)],
                      [self floorToPixel:CGRectGetHeight(rect)]);
}

+ (CGRect)ceilToRect:(CGRect)rect
{
    return CGRectMake([self ceilToPixel:CGRectGetMinX(rect)],
                      [self ceilToPixel:CGRectGetMinY(rect)],
                      [self ceilToPixel:CGRectGetWidth(rect)],
                      [self ceilToPixel:CGRectGetHeight(rect)]);
}

@end

#pragma mark - Utility Function

CGFloat MXFloorPixel(CGFloat value)
{
    return [MXGeometry floorToPixel:value];
}

CGFloat MXCeilPixel(CGFloat value)
{
    return [MXGeometry ceilToPixel:value];
}

CGPoint MXFloorPiont(CGPoint point)
{
    return [MXGeometry floorToPoint:point];
}

CGPoint MXCeilPiont(CGPoint point)
{
    return [MXGeometry ceilToPoint:point];
}

CGSize MXFloorSize(CGSize size)
{
    return [MXGeometry floorToSize:size];
}

CGSize MXCeilSize(CGSize size)
{
    return [MXGeometry ceilToSize:size];
}

CGRect MXFloorRect(CGRect rect)
{
    return [MXGeometry floorToRect:rect];
}

CGRect MXCeilRect(CGRect rect)
{
    return [MXGeometry ceilToRect:rect];
}
