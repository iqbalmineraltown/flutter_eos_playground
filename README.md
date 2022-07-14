# flutter_eos_playground

A new Flutter project.

## Dependencies
- flutter
- ruby
- appium 2 `npm install -g appium@next`
  - appium flutter driver `appium driver install flutter`


## Test
### Creating appium test scenario (ruby)
- Function name must start with `test_`

## Commands

### Run test with appium2 (ruby)

1. `flutter build apk --profile -t lib/test_main.dart` could be debug or profile
   1. or `flutter build ios --simulator -t lib/test_main.dart` for iOS
2. open terminal, run `appium  --base-path /wd/hub`
3. open another terminal session, run `ruby test_ios.rb`

### Generate flutter integration test coverage report as HTML

1. `flutter test --coverage`
2. `genhtml coverage/lcov.info -o coverage/html`
3. report file will be stored on `coverage/html/index.html`
