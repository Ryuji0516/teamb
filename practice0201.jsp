<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<html>
<head>
<link rel="stylesheet" href="css/index.css">
<title>�f�����K</title>
</head>
<body>
	<h1>�f�����K</h1>
	
<table border="0" cellpadding="0" cellspacing="0">
	<form id="postForm" enctype="multipart/form-data" action="http://0bbs.jp/attention_javascript.php" method="post" onsubmit="return validateForm();">
	</form>
	<tbody>
		<tr>
			<td valign="top">
				<input type="hidden" name="MAX_FILE_SIZE" value="1048576">
				<input type="hidden" name="f" value="1">
				<br>
				<table border="0" cellpadding="4" cellspacing="0">
					<tbody>
						<tr>
							<td align="right" nowrap="">
								<font color="red">��</font>���O
							</td>
							<td>
								<input name="n" size="18" value=""> Email 
								<input name="m" size="22" value="" style="ime-mode:disabled">
							</td>
						</tr>
						<tr>
							<td align="right" nowrap="">
								�폜�p�p�X���[�h
							</td>
							<td>
								<input name="p" value="" style="ime-mode:disabled">
							</td>
						</tr>
						<tr>
							<td align="right" nowrap="">
								�摜
							</td>
							<td>
								<!--<input type="file" size="41" name="im" value="">-->������
							</td>
						</tr>
						<tr>
							<!--
							<td align="right" nowrap="" valign="top">
								<img src="/captcha.php?PHPSESSID=2b46f06d623a8716298293029c227d15">
							</td>
							<td>
								<input type="text" maxlength="10" name="keystring">
								<br>
								<font size="2">���}���̕��������͂��Ă��������B</font>
							</td>
							�F�ؖ�����-->
						</tr>
					</tbody>
				</table>
			</td>
			<td>
				<table border="0" cellpadding="5" cellspacing="0">
					<tbody>
						<tr>
							<td valign="middle">
								<font color="red">��</font>���b�Z�[�W(�^�O�g�p�s��)
								<br>
								<textarea name="b" cols="35" rows="6"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table border="0" cellpadding="5" cellspacing="0" width="100%">
					<tbody>
						<tr>
							<td align="right">
								<input type="submit" value=" �� �M ">
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>

	
</body>
</html>