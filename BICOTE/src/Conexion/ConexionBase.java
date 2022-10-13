package Conexion;
    import java.sql.Connection;
    import java.sql.DriverManager;

public class ConexionBase {
Connection con;
    String mensaje;
    public ConexionBase(){ 
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BICOTE","root","");
            System.out.println("Conexión exitosa");
        }
            catch(Exception e){
                System.out.println("Error de conexión   "+e);
            
        }
        }
    public Connection getconexion(){
        return con;
    }
    public String retorno_conexion(){
        return mensaje;
    }
    
}
