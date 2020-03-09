package ${packageName}.${featureName?lower_case};

interface ${contractClassName} {

    interface Screen {
    }

    interface Presenter {
        void attach(Screen screen);

        void detach();
    }
}
