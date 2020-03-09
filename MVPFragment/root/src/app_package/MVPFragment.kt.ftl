package ${kotlinEscapedPackageName}.${featureName?lower_case}

import android.os.Bundle
import android.view.View
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)}
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${fragmentClassName} : Fragment(R.layout.${fragment_layout}), ${contractClassName}.Screen {

    private val presenter: ${contractClassName}.Presenter by lazy {
        ${moduleClassName}.createPresenter()
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        // TODO
    }

    override fun onStart() {
        super.onStart()
        presenter.attach(this)
    }

    override fun onStop() {
        presenter.detach()
        super.onStop()
    }

    <#if includeFragmentFactory>
    companion object {

        fun newInstance(): ${fragmentClassName} {
            return ${fragmentClassName}()
        }
    }
    </#if>
}
