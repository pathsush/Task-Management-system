<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User List</title>
</head>

<body>
<g:render template="/user/sidebar"/>

<div class="col-sm-10 col-md-offset-2 main">
    <h1 class="page-header">Users</h1>

    <h2 class="alert-danger">${flash.message}</h2>

    <fieldset class="form">
        <g:form action="list" method="GET">
            <div class="fieldcontain">
                <label for="query">Search for User:</label>
                <g:textField name="query" value="${params.query}"/>
                <button id="submit-values" class="btn btn-small btn-success btn-xs" type="submit">
                    <i class="icon-ok"></i>
                    Search
                </button>
            </div>
        </g:form>
    </fieldset>
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-default">
                <div class="panel-heading"><strong>
                    List
                </strong></div>
                <table class="table table-striped">
                    <tr>

                        <th>First name</th>
                        <th>Last Name</th>
                        <th>Phone Number</th>
                        <th> Vacation Mode</th>
                        <th>Action</th>
                    </tr>
                    <g:if test="${userList}">
                        <g:each in="${userList}" var="user">
                            <tr>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td><common:formatPhone phoneNumber="${user.phoneNumber}"/></td>
                                <td><common:vacationMode IsOnVacation="${user.vacationMode}"/> </td>
                                <td>
                                    <g:link controller="user" action="detail" id="${user.id}"
                                            class="btn btn-info btn-xs"><i class="fa fa-eye"
                                                                           aria-hidden="true"></i> View Details</g:link>
                                </td>
                            </tr>
                        </g:each>
                    </g:if>
                </table>
            </div>
            <ul class="pagination pagination-sm">
                <li>
                    %{--<g:paginate next="Forward" prev="Back" controller="user" action="list" total="${listCount}"/>--}%
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>