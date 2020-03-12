package ${packageName}.${featureName?lower_case};

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

import ${getMaterialComponentName('android.support.annotation.NonNull ', useAndroidX)};
import ${getMaterialComponentName('android.support.annotation.Nullable  ', useAndroidX)};
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

public class ${viewClassName} extends FrameLayout implements ${contractClassName}.Screen {

    private ${contractClassName}.Presenter presenter = ${moduleClassName}.createPresenter();

    public ${viewClassName}(@NonNull Context context) {
        super(context);
        init(context, null);
    }

    public ${viewClassName}(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        presenter.attach(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        presenter.detach();
        super.onDetachedFromWindow();
    }

    private void init(@NonNull Context context, @Nullable AttributeSet attrs) {
        View.inflate(context, R.layout.${view_layout}, true);
    }
}
