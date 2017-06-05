## Orange Theory Fitness App
**For Garmin Connect IQ**

**This App is Unofficial and was not created by [Orange Theory Fitness](http://www.orangetheoryfitness.com)**

![Capture](dist/graphics/ciq-badge.png)

### Description

This Garmin Connect IQ App provides a display on your Garmin Device which closely matches the display seen on the screens in Orange Theory Fitness studios.  It is intended to be used in-studio along with any of the official OTF heart rate monitors.  Devices equipped with internal HRM's can use this sensor as well but it is not as accurate.  The app will record an activity of type "SPORT_TRAINING" and sub-type "CARDIO".  This activity and it's FIT data can be saved and sync'd with Garmin Connect just as any other fitness tracking app does.

* Orange Theory App on the Connect IQ Store (Link TBD)
* Orange Theory App on Garmin Forums (Link TBD)

![Capture](dist/graphics/capture0.png)
![Capture](dist/graphics/capture1.png)
![Capture](dist/graphics/capture2.png)

### Supported Devices

* Vivoactive HR

### How-To

**Menu Options and Settings**
* Heart Rate Zones - Choose between the official Orange Theory Zone model or your User Profile Defined Model
* Allow Vibration - Enable or Disable Vibration.  Enabling presents cues at start/stop of workout and when falling into the blue zone or going up into the orange/red zone.

**Buttons and Interactions**
* Screen tap on the splash screen will start the workout
* Screen tap during a workout will activate the device back light
* Back button on splash screen will exit the app
* Back button when the workout is active will pause the workout
* Enter button works as a start/stop button

**Prompts**
* If a Heart Rate is not detected upon starting the workout, user will be confirmed if they want to proceed.  App does not function without a heart rate but this assumes the user will attach their heart rate monitor after starting the workout.  This prompt will not be displayed on subsequent start/stop actions during a workout session.
* Upon stopping / pausing the workout a menu will be presented: Resume / Save / Discard.  These are fairly self-explanatory.
* Upon saving the activity a workout summary screen will be displayed.  The back or enter button on this screen will exit the app.

### To Do and Planned Features

* Support Additional Devices
* Potentially allow for manual activity selection / switching during a workout

### Bugs and Feature Requests

To report a bug or request a feature please use the Github issue tracker associated with this repository. 

### Calculations and Accuracy

The output of this app should very closely match that of the OTF Workout Summary.  It may not be exact in all cases and is meant to be as close as possible.

* Max HR is calculated as per Orange Theory's method which is: (230 - Age) for Females and (225 - Age) for Males
* HR Zone Thresholds are: Blue - 61%, Green 71%, Orange 84%, Red 92%
* Calories Burned are calculated using Garmin's algorithms, not OTF's.  This is because I do not know how to override that field in the FIT recording file.
* Splat Points are the total time in seconds in the Orange + Red Zones, rounded to the nearest minute.

### Development

Source code is made available under the [MIT license](https://opensource.org/licenses/MIT).

Pull requests and translations are welcomed!

### Version History and Changelog

*This app is tested on a Garmin Vivoactive® HR*

**v1.0.1 - 6/5/2017**

* Fixed a type casting issue on HR percentage
* Changed the splat point calculation to be more accurate
* Updated screenshots

**v1.0.0 - 6/3/2017**

* Initial Release
