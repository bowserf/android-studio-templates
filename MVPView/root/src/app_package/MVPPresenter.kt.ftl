package ${kotlinEscapedPackageName}.${featureName?lower_case}

class ${presenterClassName} : ${contractClassName}.Presenter {

    private var screen: ${contractClassName}.Screen? = null

    override fun attach(screen: ${contractClassName}.Screen) {
        this.screen = screen
    }

    override fun detach() {
        this.screen = null
    }
}
