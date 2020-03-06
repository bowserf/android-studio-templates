<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/MVPContract.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${contractClassName}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPActivity.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${activityClassName}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPModule.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${moduleClassName}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/MVPPresenter.${ktOrJavaExt}.ftl"
    to="${srcFeature}/${presenterClassName}.${ktOrJavaExt}" />

    <instantiate from="root/res/values/colors.xml"
    to="${resFeature}/values/colors.xml" />
    <instantiate from="root/res/layout/activity_mvp.xml"
    to="${resFeature}/layout/${activity_layout}.xml" />

    <open file="${srcFeature}/${activityClassName}.${ktOrJavaExt}" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</recipe>
