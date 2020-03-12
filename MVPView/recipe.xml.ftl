<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/MVPContract.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${contractClassName}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPView.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${viewClassName}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPModule.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${moduleClassName}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPPresenter.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${presenterClassName}.${ktOrJavaExt}" />

    <instantiate from="root/res/layout/view_mvp.xml"
    to="${resFeature}/layout/${view_layout}.xml" />

    <open file="${srcFeature}/${viewClassName}.${ktOrJavaExt}" />
</recipe>
