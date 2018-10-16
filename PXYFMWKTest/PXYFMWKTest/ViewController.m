//
//  ViewController.m
//  ImageCorner
//
//  Created by Pengxuyuan on 2018/8/2.
//  Copyright © 2018年 Pengxuyuan. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+ImageCorner.h"
#import <PXYFMWKDYLIB/PXYFMWKDYLIB.h>
#import "NSObject+DLIntrospection.h"

#import "PXYDesHelper.h"
#import "PXYBase64Helper.h"
#import "PXYHashHelper.h"

/*
 对称加密（共享密钥）：AES、DES
 非对称加密（公开密钥）：RSA、DH、椭圆曲线加密
 
 */

typedef struct Person {
    int age;
//    NSString *name;
}Person;

typedef Person* TTPerson;

TTPerson PersonMake(int age, NSString *name) {
    Person person;
    person.age = age;
//    person.name = name;
    
    Person *p = &person;
    return p;
}

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;
//@property (nonatomic, assign) Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    _imageView.backgroundColor = [UIColor redColor];
    _imageView.center = self.view.center;
    _imageView.image = [UIImage imageNamed:@"icon.jpeg"];
    [self.view addSubview:_imageView];
    [_imageView settingCornerWithCornerRadius:100];
    
//    __block Person *person = PersonMake(10, @"1");
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"age:%d", (person->age));
//    });
    
}




- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    NSString *str1 = [PXYHashHelper MD5EncryptWithString:@"11"];
    NSString *str2 = [PXYHashHelper MD516ByteEncryptWithString:@"11"];
    
    
}


//#import <objc/runtime.h>
//#import <dlfcn.h>
//#import <mach-o/ldsyms.h>
//#include <limits.h>
//#include <mach-o/dyld.h>
//#include <mach-o/nlist.h>
//#include <string.h>
//
//#import "Aspects.h"
//unsigned int count;
//const char **classes;
//+ (void)load {
//    //1.获取到所有的类
//    int imageCount = (int)_dyld_image_count();
//
//    for(int iImg = 0; iImg < imageCount; iImg++) {
//
//        const char* path = _dyld_get_image_name((unsigned)iImg);
//        NSString *imagePath = [NSString stringWithUTF8String:path];
//
//        NSBundle* mainBundle = [NSBundle mainBundle];
//        NSString* bundlePath = [mainBundle bundlePath];
//
//        if ([imagePath containsString:bundlePath] && ![imagePath containsString:@".dylib"]) {
//            classes = objc_copyClassNamesForImage(path, &count);
//
//            for (int i = 0; i < count; i++) {
//                NSString *className = [NSString stringWithCString:classes[i] encoding:NSUTF8StringEncoding];
//                if (![className isEqualToString:@""] && className) {
//                    NSLog(@"============= Class %@ Start =============",className);
//                    Class class = object_getClass(NSClassFromString(className));
////                    NSLog(@"%@",className);
//
//                    if ([className isEqualToString:@"ViewController"]) {
//                        unsigned int count = 0;
//                        Class realClass = NSClassFromString(className);
//                        id obj = [realClass new];
//                        Method *methodList = class_copyMethodList([obj class], &count);
//                        for (int i = 0; i < count; i ++) {
//                            Method method = methodList[i];
//                            NSLog(@"Method: ---- %@",NSStringFromSelector(method_getName(method)));
//
//                            SEL hookSEL = method_getName(method);
//                            [obj aspect_hookSelector:hookSEL withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, BOOL animated) {
//                                NSLog(@"!!!!");
//                            } error:NULL];
//
//                        }
//                    }
//
//
//                    NSLog(@"============= Class %@ End ============= \n",className);
//
//                }
//            }
//        }
//    }
//
//
//    //2.获取类中的所有方法
//    //3.交换方法
//    //4.Log 调用的方法，当前类，当前函数，当前线程等信息
//}








/*
 
 - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
 func();
 }
 
 void pr(int (^block)(void)) {
 printf("%d\n",block());
 }
 
 void func() {
 int (^block[10])(void);
 int i;
 for (i = 0; i < 10; i ++) {
 block[i] = ^{
 return i;
 };
 }
 
 for (int j = 0; j < 10; j ++) {
 pr(block[j]);
 }
 }
 
 
 - (void)testDemo {
 NSLog(@"%s",__func__);
 }
 
 + (void)test1Demo {
 
 }
 
 
 */
@end

