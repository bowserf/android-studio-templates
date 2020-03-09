package ${kotlinEscapedPackageName}.${featureName?lower_case}

object ${moduleClassName} {

    fun createPresenter(): ${contractClassName}.Presenter {
        return ${presenterClassName}()
    }
}
