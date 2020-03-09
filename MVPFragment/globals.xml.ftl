<?xml version="1.0"?>
<globals>
	<#include "root://activities/common/common_globals.xml.ftl" />
	<global id="srcFeature" value="${escapeXmlAttribute(srcOut)}/${featureName?lower_case}" />
	<global id="resFeature" value="${escapeXmlAttribute(resOut)}/${featureName?lower_case}" />
</globals>