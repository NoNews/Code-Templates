<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:19.+"/></#if>

    <#if includeLayout>
        <instantiate from="res/layout/activity_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />
    </#if>

    <open file="${escapeXmlAttribute(srcOut)}/activities/${subpackage}${className}.java" />

    <instantiate from="src/app_package/ui/activity/BlankActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/${subpackage}${className}.java" />

    <#if includeView>
    <instantiate from="src/app_package/presentation/view/BlankView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/interfaces/views/${subpackage}${viewName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}interfaces/views/${subpackage}${viewName}.java" />
    </#if>

    <#if includePresenter>
    <instantiate from="src/app_package/presentation/presenter/BlankPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenters/${subpackage}${presenterName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/presenter/${subpackage}${presenterName}.java" />
    </#if>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestDir)}/AndroidManifest.xml" />
                                      
</recipe>
