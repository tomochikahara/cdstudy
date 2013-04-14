<%@ page import="gts.Issue" %>



<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'title', 'error')} required">
    <label for="title">
        <g:message code="issue.title.label" default="Title"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="title" required="" value="${issueInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'detail', 'error')} required">
    <label for="detail">
        <g:message code="issue.detail.label" default="Detail"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="detail" required="" value="${issueInstance?.detail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'author', 'error')} required">
    <label for="author">
        <g:message code="issue.author.label" default="Author"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="author" required="" value="${issueInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'point', 'error')} required">
    <label for="point">
        <g:message code="issue.point.label" default="Point"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="point" required="" value="${fieldValue(bean: issueInstance, field: 'point')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: issueInstance, field: 'rank', 'error')} required">
    <label for="rank">
        <g:message code="issue.rank.label" default="Rank"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="rank" required="" value="${fieldValue(bean: issueInstance, field: 'rank')}"/>
</div>

