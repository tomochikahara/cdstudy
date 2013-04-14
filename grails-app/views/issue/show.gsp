<%@ page import="gts.Issue" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="row-fluid">

    <div class="span3">
        <div class="well">
            <ul class="nav nav-list">
                <li class="nav-header">${entityName}</li>
                <li>
                    <g:link class="list" action="list">
                        <i class="icon-list"></i>
                        <g:message code="default.list.label" args="[entityName]"/>
                    </g:link>
                </li>
                <li>
                    <g:link class="create" action="create">
                        <i class="icon-plus"></i>
                        <g:message code="default.create.label" args="[entityName]"/>
                    </g:link>
                </li>
            </ul>
        </div>
    </div>

    <div class="span9">

        <div class="page-header">
            <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        </div>

        <g:if test="${flash.message}">
            <bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
        </g:if>

        <dl>

            <g:if test="${issueInstance?.title}">
                <dt><g:message code="issue.title.label" default="Title"/></dt>

                <dd><g:fieldValue bean="${issueInstance}" field="title"/></dd>

            </g:if>

            <g:if test="${issueInstance?.detail}">
                <dt><g:message code="issue.detail.label" default="Detail"/></dt>

                <dd><g:fieldValue bean="${issueInstance}" field="detail"/></dd>

            </g:if>

            <g:if test="${issueInstance?.author}">
                <dt><g:message code="issue.author.label" default="Author"/></dt>

                <dd><g:fieldValue bean="${issueInstance}" field="author"/></dd>

            </g:if>

            <g:if test="${issueInstance?.point}">
                <dt><g:message code="issue.point.label" default="Point"/></dt>

                <dd><g:fieldValue bean="${issueInstance}" field="point"/></dd>

            </g:if>

            <g:if test="${issueInstance?.rank}">
                <dt><g:message code="issue.rank.label" default="Rank"/></dt>

                <dd><g:fieldValue bean="${issueInstance}" field="rank"/></dd>

            </g:if>

        </dl>

        <g:form>
            <g:hiddenField name="id" value="${issueInstance?.id}"/>
            <div class="form-actions">
                <g:link class="btn" action="edit" id="${issueInstance?.id}">
                    <i class="icon-pencil"></i>
                    <g:message code="default.button.edit.label" default="Edit"/>
                </g:link>
                <button class="btn btn-danger" type="submit" name="_action_delete">
                    <i class="icon-trash icon-white"></i>
                    <g:message code="default.button.delete.label" default="Delete"/>
                </button>
            </div>
        </g:form>

    </div>

</div>
</body>
</html>
