<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Customer Detail</title>
</head>

<body>
<g:render template="/customer/sidebar"/>

<div class="col-sm-10 col-md-offset-2 main">
    <h1 class="page-header">${customer.firstName}'s Detail</h1>

    <g:if test="${flash.message}">
        <div class="alert alert-danger" role="alert"><h2>${flash.message}</h2></div>
    </g:if>
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="jumbotron">
                    <p>

                    <h3 class="text-center">${customer.firstName} ${customer.lastName}</h3></p>

                    <hr>

                        <table class="table table-responsive">

                    <tr>
                        <td>Email:</td>
                        <td><strong><em>${customer.email}</em></strong></td>
                    </tr>

                            <tr>
                                <td>Phone Number:</td>
                                <td><strong><em>${customer.phoneNumber}</em></strong></td>
                            </tr>

                            <tr><td>Address:</td>
                                <td><strong><em>${customer.mailingAddress1 +" "+ customer.mailingAddress2+" "+ customer.city+" "+ customer.state+" "+customer.zipCode+" "+ customer.country}</em></strong></td>
                            </tr>

                            <h5>Date Created: <div class="label label-info"><common:dateFormatWithTime
                                    dateValue="${customer.dateCreated}"/></div></h5>
                        </table>
                    <table class="table table-responsive">
                        <tr>
                            <th>
                                <g:link controller="customer" action="edit" id="${customer.id}"
                                        class="btn btn-success"><i class="fa fa-edit"
                                                                   aria-hidden="true"></i> Edit</g:link>
                            </th>
                            <th class="bottom-right">
                            %{--sends delete request as POST form submission--}%
                                <g:form controller="customer" action="delete" id="${customer.id}" method="POST">
                                    <button type="button" class="btn btn-danger pull-right"
                                            data-toggle="modal"
                                            data-target="#deleteModal"><i class="fa fa-trash"
                                                                                  aria-hidden="true"></i> Delete
                                    </button>
                                </g:form>
                                <g:render template="/layouts/deleteModal" model="[data:customer]"/>
                            </th>
                        </tr>
                    </table>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>