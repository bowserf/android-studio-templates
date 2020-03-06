package ${packageName}.${featureName?lower_case};

interface ${contractClassName} {

    interface Screen {
        void closeScreen();
    }

    interface Presenter {
        void attach(Screen screen);

        void detach();

        void onCloseButtonClicked();
    }
}
