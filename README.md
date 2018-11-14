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