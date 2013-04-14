<%@ page import="gts.Issue" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="bootstrap">
    <g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="row-fluid">

    <div class="span3">
        <div class="well">
            <ul class="nav nav-list">
                <li class="nav-header">${entityName}</li>
                <li class="active">
                    <g:link class="list" action="list">
                        <i class="icon-list icon-white"></i>
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
            <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        </div>

        <g:if test="${flash.message}">
            <bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
        </g:if>

        <table class="table table-striped">
            <thead>
            <tr>

                <g:sortableColumn property="title" title="${message(code: 'issue.title.label', default: 'Title')}"/>

                <g:sortableColumn property="detail" title="${message(code: 'issue.detail.label', default: 'Detail')}"/>

                <g:sortableColumn property="author" title="${message(code: 'issue.author.label', default: 'Author')}"/>

                <g:sortableColumn property="point" title="${message(code: 'issue.point.label', default: 'Point')}"/>

                <g:sortableColumn property="rank" title="${message(code: 'issue.rank.label', default: 'Rank')}"/>

                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${issueInstanceList}" var="issueInstance">
                <tr>

                    <td>${fieldValue(bean: issueInstance, field: "title")}</td>

                    <td>${fieldValue(bean: issueInstance, field: "detail")}</td>

                    <td>${fieldValue(bean: issueInstance, field: "author")}</td>

                    <td>${fieldValue(bean: issueInstance, field: "point")}</td>

                    <td>${fieldValue(bean: issueInstance, field: "rank")}</td>

                    <td class="link">
                        <g:link action="show" id="${issueInstance.id}" class="btn btn-small">Show &raquo;</g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <bootstrap:paginate total="${issueInstanceTotal}"/>
        </div>
    </div>

</div>
</body>
</html>
