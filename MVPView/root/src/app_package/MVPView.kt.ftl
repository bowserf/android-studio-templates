package ${kotlinEscapedPackageName}.${featureName?lower_case}

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.widget.FrameLayout
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${viewClassName} @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr), ${contractClassName}.Screen {

    private val presenter: ${contractClassName}.Presenter by lazy {
        ${moduleClassName}.createPresenter()
    }

    init {
        View.inflate(context, R.layout.${view_layout}, this)
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        presenter.attach(this)
    }

    override fun onDetachedFromWindow() {
        presenter.detach()
        super.onDetachedFromWindow()
    }
}
