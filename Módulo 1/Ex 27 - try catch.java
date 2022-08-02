//Imagine um método para abrir uma conexão com o BD.
Connection conn = null;
try {
    Class.forName(driver);
    conn = DriverManager.getConnection(url, usu, senha);
} 
catch (ClassNotFoundException | SQLException ex) { 
    System.out.println("Problemas ao abrir conexão...");
} 
return conn;