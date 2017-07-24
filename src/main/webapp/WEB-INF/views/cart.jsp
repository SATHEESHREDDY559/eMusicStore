<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Satheesh Reddy
  Date: 6/29/2017
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class = "container">
        <section>
            <div class="container">
                <h1>Cart</h1>
                <p> All the product in your shopping cart</p>
            </div>
        </section>
        <section class="container" ng-app="cartApp">
            <div ng-controller ="cartCtrl" ng-init="initCart('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left" ng-click="clearCart('${cartId}')"><span class="glyphicon glyphicon-remove-sign"></span>Clear cart</a>

            </div>
        <table class="table table-hover">

            <tr >

                <th>Product</th>
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <tr ng-repeat ="item in cart.cartItemMap">
                <td>{{item.product.productName}}</td>
                <td> {{item.product.productPrice}}</td>
                <td> {{item.quantity}}</td>
                <td> {{item.totalprice}}</td>
                <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"><span class="glyphicon-remove"></span> Remove </a></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>GrandTotal</td>
                <td>{{cart.gradTotal}}</td>
                <td></td>
            </tr>

        </table>

        <a href="<spring:url value="/productList"/>" class="btn btn-default"> Continue Shopping</a>
    </div>
        </section>

    </div>

</div>
    <script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>