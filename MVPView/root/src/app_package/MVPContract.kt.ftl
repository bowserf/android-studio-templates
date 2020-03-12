package ${kotlinEscapedPackageName}.${featureName?lower_case}

interface ${contractClassName} {

    interface Screen

    interface Presenter {
        fun attach(screen: Screen)
        fun detach()
    }
}
