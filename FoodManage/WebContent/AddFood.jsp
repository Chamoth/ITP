<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "Food.css" />

<meta charset="UTF-8">
<title>PizzaMania - Add New Food</title>
<style type = "text/css">

body{
background-image:url('P1.jpeg');
background-attachment:fixed;
}

td, table, th{
color:black;
padding: 8px;

}

h2{
color:black;
}

.bttn1 {
	/*background-color: #00FF00;*/ /* blue */
   /* color: white;
    width: 25%;
    padding: 8px 100px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;*/
    
     background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

 </style>
 
 <script type="text/javascript">
		function validate(){
			if((add.unitprice.value)<0){
				alert("Check the Unit Price: Price Must not be a Negative Value."); 
				add.unitprice.focus();
				return false;
			}
			/*if((add.unitprice.value).length>7){
				alert("Check the phone number");
				add.phoneNo.focus();
				return false;
			}*/
			
			return true;
			
		}
</script>
 
</head>

<body class="body">
<div class = "bdy" align = "center">


	<h1 style = "color:yellow;" align = "center">Add New Food Variety </h1>

	   <h2 style = "color:red;" align = "center">Food Management Page of PizzaMania</h2>
	<br>

	<form name="add" method="post" action="addfood" >
		<table>
			<tr>
				<td><b>Food Code</b></td>
				<td><input type="text" name="foodcode" required ="required" />
				</td>
			</tr>

			<tr>
				<td><b>Food Name</b></td>
				<td><input type="text" name="foodname" required ="required" />
				</td>
			</tr>

			<tr>
				<td><b>Introduction</b></td>
				<td><input type="text" name="introduction" required ="required" /></td>
			</tr>

			<tr>
				<td><b>Unit Price</b></td>
				<td><input type="number" name="unitprice" required ="required"/></td>
			</tr>
			<tr>
				<td><b>Category</b></td>
				<td><input type="text" name="category" required ="required"/></td>
			</tr>
			<tr>
				<td><b>Size</b></td>
				<td><select name="size" required ="required">
				
				<option value = "small">Small</option>
				<option value = "medium">Medium</option>
				<option value = "large">Large</option>
				
				</select></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			
			</table>
			
			
			<div class = "bttn1">
			
				<td colspan="2"><input type="submit" value="Add Food"  onClick="return validate();"/> </td>
			
		
			
				<td colspan="2"><input type="reset" value="Reset" /></td>
		
			</div>
			
	</form>
	</div>
</body>

</html>