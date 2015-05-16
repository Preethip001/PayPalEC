<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
   String Payment_Amount = "200" ;
   session.setAttribute( "Payment_Amount", Payment_Amount );
%>
<title>PayPal Express Checkout</title>
</head>
<body>
<form method="post" >
	<!-- <form method="post" action="${initParam['posturl'] }"> -->
		<input type="hidden" name="upload" value="1" />
		<input type="hidden" name="return" value="${initParam['returnurl'] }" />
		<input type="hidden" name="cmd" value="_cart" />
		<input type="hidden" name="business" value="${initParam['business'] }" />
		<table>
		<tr>
		
		<td>Products<input type="text" name="item_name" value="" /></td>
		<td><input type="text" name="item_naumber" value="item_number" /></td>
		<td><input type="text" name="amount" value="amount" /></td>
		<td><input type="text" name="quantity" value="quantity" /></td>
		</tr>
		<!-- Product 1 -->
		<tr>
		
		<td>Product 1<input type="radio"  name="item_name_1" value="Product 1" /></td>
		<td><input type="text" name="item_naumber_1" value="p1" /></td>
		<td><input type="text" name="amount_1" value="2" /></td>
		<td><input type="text" name="quantity_1" value="3" /></td>
		</tr>
		<tr>
		<!-- Product 2 -->
		<td>Product 2<input type="radio" name="item_name_2" value="Product 2" /></td>
		<td><input type="text" name="item_naumber_2" value="p2" /></td>
		<td><input type="text" name="amount_2" value="3" /></td>
		<td><input type="text" name="quantity_2" value="4" /></td>
		</tr>
		<tr>
		<!-- Product 3 -->
		<td>Product 3<input type="radio" checked name="item_name_3" value="Product 3" /></td>
		<td><input type="text" name="item_naumber_3" value="p3" /></td>
		<td><input type="text" name="amount_3" value="40" /></td>
		<td><input type="text" name="quantity_3" value="5" /></td>
		</tr>
		</table>
		<!-- Product 1 -->
		<input type="hidden" name="item_name_1" value="Product 1" />
		<input type="hidden" name="item_naumber_1" value="p1" />
		<input type="hidden" name="amount_1" value="2" />
		<input type="hidden" name="quantity_1" value="3" />
		
		<!-- Product 2 -->
		<input type="hidden" name="item_name_2" value="Product 2" />
		<input type="hidden" name="item_naumber_2" value="p2" />
		<input type="hidden" name="amount_2" value="3" />
		<input type="hidden" name="quantity_2" value="4" />
		
		<!-- Product 3 -->
		<input type="hidden" name="item_name_3" value="Product 3" />
		<input type="hidden" name="item_naumber_3" value="p3" />
		<input type="hidden" name="amount_3" value="40" />
		<input type="hidden" name="quantity_3" value="5" />
		
	</form>
	<form action='expresscheckout.jsp' METHOD='POST'>
<input type='image' name='submit' src='https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif' border='0' align='top' alt='Check out with PayPal'/>
</form>
</body>
</html>