/*
UNOFFICIAL Orange Theory Garmin App
The "Orange Theory" name, logo, and "Splat Points" are trademarks of Orange Theory Fitness

Created by Bryan Chain, Copyright 2017
Personal Homepage: https://bryanchain.com

Records an activity and displays data fields relevant to an OTF training session.

*/

using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class OTFApp extends App.AppBase {

    var model;
    var controller;

    hidden var view;
    hidden var delegate;

    //! Initialize App
    function initialize() {
        AppBase.initialize();

        //! Update app version in preferences
        var version = Ui.loadResource(Rez.Strings.AppVersion);
        setProperty("appVersion", version);

        model = new OTFModel();
        controller = new OTFController();
    }

    //! Return the initial view of your application here
    function getInitialView() {
        view = new OTFSplashView();
        delegate = new OTFDelegate();

        controller.loadPreferences();
        delegate.setController(controller);

        return [ view, delegate ];
    }

    //! New app settings have been received
    function onSettingsChanged() {
        controller.loadPreferences();
        Ui.requestUpdate();
    }

}