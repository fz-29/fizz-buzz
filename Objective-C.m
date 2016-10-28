#import <objc/objc.h>
#import <objc/Object.h>
#import <Foundation/Foundation.h>

@implementation TestObj
int main()
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	int c;
	for(c = 1; c <= 100; c++)
	{
	NSMutableString *output = [NSMutableString stringWithCapacity:20];
		if(c % 3 == 0) 
			[output appendString:@"Fizz"];
		if(c % 5 == 0) 
			[output appendString:@"Buzz"];
		
		if([output length] == 0)
			NSLog (@"%d\n", c);
		else 
			NSLog (@"%@\n", output);
	}
	[pool drain];
	return 0;
}
@end