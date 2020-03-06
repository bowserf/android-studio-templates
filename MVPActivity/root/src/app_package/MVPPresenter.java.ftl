package ${packageName}.${featureName?lower_case};

import androidx.annotation.Nullable;

class ${presenterClassName} implements ${contractClassName}.Presenter {

    @Nullable
    private ${contractClassName}.Screen screen;

    @Override
    public void attach(${contractClassName}.Screen screen) {
        this.screen = screen;
    }

    @Override
    public void detach() {
        this.screen = null;
    }

    @Override
    public void onCloseButtonClicked() {
        screen.closeScreen();
    }
}
