# flutter_app_boilerplate

A new Flutter project.

## Navigation
The app will have a drawer navigator, which will be able to navigate to "how to" screens

## List View 
In the list view screen I will show how to display paged data from a json api endpoint.

## Image Picker 
in the image picker view I will show how to pick and upload an image to an api endpoint.



### Drawer Navigation
The first thing to do when building any app with navigation is that you need routes.
Routes are a simple mapping from text to Widget.

```dart
 routes: <String, WidgetBuilder>{
        "/page2": (BuildContext context) => new Page2(),
        "/home": (BuildContext context) => new HomePage(),
        "/detail": (BuildContext context) => new DetailPage(),
      },
```

When scaffolding an appbar screen we will need to assign a drawer widget to the drawer property of the Appbar

```dart

```


### User List
As a user I would like to view a list of users with first, surname and avatar.


### Add a User
As a user I would like to see a plus button on the userlist appbar.  I would like to press this button 
and navigate to a new screen to create a user with the following details
1. First Name
2. Surname
3. Email Address
When I press the save button the user needs to be posted to the api. and go back to list screen.

