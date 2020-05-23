//
//  MXGeometry.h
//  MXGeometry
//
//  Created by MasterXu on 2020/5/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MXGeometry : NSObject

// CGFloat
+ (CGFloat)onePixel;
+ (CGFloat)floorToPixel:(CGFloat)value;
+ (CGFloat)ceilToPixel:(CGFloat)value;

// CGPoint
+ (CGPoint)onePixelPoint;
+ (CGPoint)floorToPoint:(CGPoint)point;
+ (CGPoint)ceilToPoint:(CGPoint)point;

// CGSize
+ (CGSize)onePixelSize;
+ (CGSize)floorToSize:(CGSize)size;
+ (CGSize)ceilToSize:(CGSize)size;

// CGRect
+ (CGRect)onePixelRect;
+ (CGRect)floorToRect:(CGRect)rect;
+ (CGRect)ceilToRect:(CGRect)rect;

@end

#pragma mark - Utility Function

extern CGFloat MXFloorPixel(CGFloat value);
extern CGFloat MXCeilPixel(CGFloat value);

extern CGPoint MXFloorPiont(CGPoint point);
extern CGPoint MXCeilPiont(CGPoint point);

extern CGSize MXFloorSize(CGSize size);
extern CGSize MXCeilSize(CGSize size);

extern CGRect MXFloorRect(CGRect rect);
extern CGRect MXCeilRect(CGRect rect);

NS_ASSUME_NONNULL_END
