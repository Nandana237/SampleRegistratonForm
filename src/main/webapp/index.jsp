<html>
<head>
<script type="text/javascript" src="validate.js"></script>
<title>Students, Register now!</title>
</head>
<body>
<style>
	body {
		font-size: larger;
	}
</style>

<form action="register" method="POST" name="StudentRegistration">

<table cellpadding="2" width="20%" bgcolor="#eee" align="center"
cellspacing="2">

<tr>
<td colspan=2>
<center><font size=4><b>Member Registration Form</b></font></center>
</td>
</tr>

<tr>
<td>Name</td>
<td><input type=text name=textnames id="textname" size="30"></td>
</tr>

<tr>
<td>Dad's Name</td>
<td><input type="text" name="fathername" id="fathername"
size="30"></td>
</tr>
<tr>
<td>Postal Address</td>
<td><input type="text" name="paddress" id="paddress" size="30"></td>
</tr>

<tr>
<td>Current Address</td>
<td><input type="text" name="currentaddress"
id="currentaddress" size="30"></td>
</tr>

<tr>
<td>Sex</td>
<td><input type="radio" name="sex" value="male" size="10">Male
<input type="radio" name="sex" value="Female" size="10">Female</td>
</tr>

<tr>
<td>City</td>
<td><select name="City">
<option value="-1" selected>select..</option>
<option value="New Delhi">NEW DELHI</option>
<option value="Mumbai">MUMBAI</option>
<option value="Ludhiana">LUDHIANA</option>
<option value="Patna">PATNA</option>
<option value="Bangalore">BANGALORE</option>
<option value="Kolkata">KOLKATA</option>
</select></td>
</tr>

<tr>
<td>Course</td>
<td><select name="Course">
<option value="-1" selected>select..</option>
<option value="B.Tech">B.TECH</option>
<option value="MCA">MCA</option>
<option value="MBA">MBA</option>
<option value="BCA">BCA</option>
</select></td>
</tr>

<tr>
<td>District</td>
<td><select name="District">
<option value="-1" selected>select..</option>
<option value="Nalanda">NALANDA</option>
<option value="Lucknow">LUCKNOW</option>
<option value="Gaya">GAYA</option>
<option value="Patna">PATNA</option>
</select></td>

</tr>

<tr>
<td>State</td>
<td><select Name="State">
<option value="-1" selected>select..</option>
<option value="New Delhi">NEW DELHI</option>
<option value="Mumbai">MUMBAI</option>
<option value="Goa">GOA</option>
<option value="Bihar">BIHAR</option>
</select></td>
</tr>
<tr>
<td>Pin Code</td>
<td><input type="text" name="pincode" id="pincode" size="30"></td>

</tr>
<tr>
<td>Email Id</td>
<td><input type="text" name="emailid" id="emailid" size="30"></td>
</tr>

<tr>
<td>D.O.B</td>
<td><input type="text" name="dob" id="dob" size="30"></td>
</tr>

<tr>
<td>Mobile No.</td>
<td><input type="text" name="mobileno" id="mobileno" size="30"></td>
</tr>
<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit Form" /></td>
</tr>
</table>
</form>
</body>
</html>
