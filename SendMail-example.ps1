./Functions.ps1

$images = @{ 
    image1 = "image1.png"
}

$body = @" 
<html>  

<body lang=FR link="#0563C1" vlink="#954F72">
	<div class=WordSection1>

		<span style='font-size:11.0pt;color:#CFCFCF'></span>
		<br><br>
		<span style='font-size:11.0pt;font-family:"Calibri","sans-serif"'>
			Bonjour,
			<br>
			<br>
			Ceci est un test d'envoi de message avec des images. 
			<br>br>
			<img border=0 width=256 height=256 id="image1" src="cid:image1" alt=image1>
		</span>
		<br><br>
		<span style='font-family:"Calibri","sans-serif"'>Cordialement,
			<br>
			La direction
		</span>
		
	</div>
</body>

</html>
"@

$params = @{ 
    InlineAttachments = $images 
    Body = $body 
    BodyAsHtml = $true 
    Subject = "Test d'envoi de mail"
    From = 'from-address@example.com' 
    To = 'to-address@example.com'
    SmtpServer = 'smtp-server@example.com' 
}