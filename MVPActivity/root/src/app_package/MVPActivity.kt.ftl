package ${kotlinEscapedPackageName}.${featureName?lower_case}

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.MenuItem
import ${getMaterialComponentName('android.support.v7.app.AppCompatActivity ', useAndroidX)}
import ${getMaterialComponentName('android.support.v7.widget.Toolbar ', useAndroidX)}
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${activityClassName} : AppCompatActivity(), ${contractClassName}.Screen {

    private val presenter: ${contractClassName}.Presenter by lazy {
        ${moduleClassName}.createPresenter()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activity_layout})

        setupToolbar()
    }

    override fun onStart() {
        super.onStart()
        presenter.attach(this)
    }

    override fun onStop() {
        presenter.detach()
        super.onStop()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        when (item.itemId) {
            android.R.id.home -> presenter.onCloseButtonClicked()
        }
        return true
    }

    override fun closeScreen() {
        finish()
    }

    private fun setupToolbar() {
        val toolbar = findViewById<Toolbar>(R.id.${featureName?lower_case}_screen_toolbar)!!
        setSupportActionBar(toolbar)
        supportActionBar!!.setDisplayHomeAsUpEnabled(true)
    }

    <#if includeActivityFactory>
    companion object {

        fun startActivity(context: Context) {
            val intent = Intent(context, ${activityClassName}::class.java)
            if (context !is Activity) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
            }
            context.startActivity(intent)
        }
    }
    </#if>
}
