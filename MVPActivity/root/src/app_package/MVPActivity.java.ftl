package ${packageName}.${featureName?lower_case};

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;

import ${getMaterialComponentName('android.support.v7.app.AppCompatActivity ', useAndroidX)};
import ${getMaterialComponentName('android.support.v7.widget.Toolbar ', useAndroidX)};

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

public class ${activityClassName} extends AppCompatActivity implements ${contractClassName}.Screen {

    private ${contractClassName}.Presenter presenter = ${moduleClassName}.createPresenter();

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activity_layout});

        setupToolbar();
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

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                presenter.onCloseButtonClicked();
                break;
        }
        return true;
    }

    @Override
    public void closeScreen() {
        finish();
    }

    private void setupToolbar() {
        Toolbar toolbar = findViewById(R.id.${featureName?lower_case}_screen_toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }

    <#if includeActivityFactory>
    public static void startActivity(Context context) {
        Intent intent = new Intent(context, ${activityClassName}.class);
        if (context instanceof Activity) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
        }
        context.startActivity(intent);
    }
    </#if>
}
