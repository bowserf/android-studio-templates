package ${kotlinEscapedPackageName}.${featureName?lower_case}

interface ${contractClassName} {

    interface Screen {
        fun closeScreen()
    }

    interface Presenter {
        fun attach(screen: Screen)
        fun detach()
        fun onCloseButtonClicked()
    }
}
