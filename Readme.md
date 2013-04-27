# MRCurrencyRound

A simple NSNumber class extension that provides better formatting for currency.

## How to install:

If you're not using [CocoaPods](http://cocoapods.org/), you should be. Simply add ```pod 'MRCurrencyRound'``` to your ```Podfile```

## How to use:

After you've got the pod installed into your project's workspace, you can use the methods ```NSNumber.currencyRound``` and ```NSNumber.currencyString``` to return properly formatted currency objects.

### Example:

```
NSNumber *example = [NSNumber alloc] initWithFloat:43.652443f];
NSLog(@"Currency String: %@", example.currencyString);
// Currency String: $43.65
// Or whatever your local currency format is (€43.65 or 43.65DKK)
```
