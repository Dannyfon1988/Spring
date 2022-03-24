/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import models.usuarioBean;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author alexi
 */
public class Dao_usuarios {
     JdbcTemplate jdbcTemplate;
    Dao con = new Dao();
    private static final String UPLOAD_DIRECTORY ="..\\..\\web\\public\\img\\fotos";
    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50;
    
    
    public  List consultarUsuariosAdop(){
    List datosus = new ArrayList();
    this.jdbcTemplate = new JdbcTemplate(con.conDB());
    String sql = "select id ,nombres from usuarios";
    datosus = this.jdbcTemplate.queryForList(sql);
    return datosus;
    
    }
    


public void accUsuarioSinFoto(usuarioBean usu, List lista){
    this.jdbcTemplate = new JdbcTemplate(con.conDB());
    ArrayList<String> listados = new ArrayList<>();
    for (int i = 0; i < lista.size(); i++){
       FileItem fileItem = (FileItem)lista.get(i);
       listados.add(fileItem.getString());
     }
         
      usu.setCedula(listados.get(0));
      usu.setNombres(listados.get(1));
      usu.setTelefono(listados.get(2));
      usu.setEmail(listados.get(3));    
      
      String sql = "update usuarios Set cedula = ?, nombres =?, telefono = ?, email= ? where id=?";
      jdbcTemplate.update(sql, usu.getCedula(),usu.getNombres(),usu.getTelefono(),usu.getEmail(),usu.getId());

}
        
public void accUsuarioConFoto(usuarioBean usu,
        boolean isMultipart,
        HttpServletRequest request,
        List items){
        this.jdbcTemplate = new JdbcTemplate(con.conDB());
        ArrayList<String> listados = new ArrayList<>();
        if(isMultipart){
        DiskFileItemFactory file= new DiskFileItemFactory();
        file.setSizeThreshold(MEMORY_THRESHOLD);
        file.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload fileUpload = new ServletFileUpload(file);
        fileUpload.setFileSizeMax(MAX_FILE_SIZE);
        fileUpload.setSizeMax(MAX_FILE_SIZE);
        String Uploadpath = request.getServletContext().getRealPath("")+ File.separator + UPLOAD_DIRECTORY;
        File uploadDir = new File(Uploadpath);
        if(!uploadDir.exists()){
          uploadDir.mkdir();
        } 
        for (int i = 0; i< items.size(); i++){
        
        FileItem fileItem = (FileItem) items.get(i);
        
        if(!fileItem.isFormField()){
           String fileName = new File(fileItem.getName()).getName();
           String filePath = Uploadpath + File.separator + "id-" + listados.get(0)+"-"+ fileName;
           File UploadFile = new File(filePath);
           String nameFile= ("public/img/fotos/" + "id-" + listados.get(0)+"-"+ fileName);
        try{
            UploadFile.delete();
            fileItem.write(UploadFile);
            usu.setFoto(nameFile);
        } catch(Exception e){
          System.out.print("escritura"+ e.getMessage());
        } 
        }else{
         listados.add(fileItem.getString());
        }
       }
      usu.setCedula(listados.get(0));
      usu.setNombres(listados.get(1));
      usu.setTelefono(listados.get(2));
      usu.setEmail(listados.get(3));
     }       
      String sql = "update usuarios Set cedula = ?, nombres =?, telefono = ?, email= ?, foto =? where id=?";
      jdbcTemplate.update(sql, usu.getCedula(),usu.getNombres(),usu.getTelefono(),usu.getEmail(),usu.getFoto(),usu.getId());

}

public void borrarImagenactualizada(String foto, String deletepaht){
final String DELETE_DIRECTORY = "..\\..\\WEB\\";
String deleteFile = deletepaht + DELETE_DIRECTORY + foto;
File borrar = new File(deleteFile);
if(borrar.delete()){
System.out.println("borrado");
}else{
System.out.println("no se pudo borrar..");
}

}


}



        