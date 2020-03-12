package ${packageName}.${featureName?lower_case};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${getMaterialComponentName('android.support.annotation.NonNull ', useAndroidX)};
import ${getMaterialComponentName('android.support.annotation.Nullable  ', useAndroidX)};
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)};
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

public class ${fragmentClassName} extends Fragment implements ${contractClassName}.Screen {

    private ${contractClassName}.Presenter presenter = ${moduleClassName}.createPresenter();

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.${fragment_layout}, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        // TODO
    }

    @Override
    public void onStart() {
        super.onStart();
        presenter.attach(this);
    }

    @Override
    public void onStop() {
        presenter.detach();
        super.onStop();
    }

    <#if includeFragmentFactory>
    public static ${fragmentClassName} newInstance() {
        return new ${fragmentClassName}();
    }
    </#if>
}
