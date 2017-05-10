package Tools;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import Model.Group_regist;
import Model.Member;

public class ExporExel {

	public ExporExel() {
		
	}
	private static HSSFCellStyle createStyleForTitle(HSSFWorkbook workbook) {
        HSSFFont font = workbook.createFont();
        font.setBold(true);
        HSSFCellStyle style = workbook.createCellStyle();
        style.setFont(font);
        return style;
    }
	public static String ExportMember(ArrayList<Member> list, String location) throws IOException 
	{
		HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet("Members sheet");
        CellStyle cellStyle = workbook.createCellStyle();
        CreationHelper createHelper = workbook.getCreationHelper();
        cellStyle.setDataFormat(
            createHelper.createDataFormat().getFormat("m/d/yy h:mm"));
        String locationOut = "";
        int rownum = 0;
        Cell cell;
        Row row;
        
        HSSFCellStyle style = createStyleForTitle(workbook);
        
        row = sheet.createRow(rownum);
        //Group Id
        cell = row.createCell(0,CellType.STRING);
        cell.setCellValue("Group Id");
        cell.setCellStyle(style);
        
        //Group name
        cell = row.createCell(1,CellType.STRING);
        cell.setCellValue("Group Name");
        cell.setCellStyle(style);
        
        //Member id
        cell = row.createCell(2,CellType.STRING);
        cell.setCellValue("id");
        cell.setCellStyle(style);
        
        //Member name
        cell = row.createCell(3,CellType.STRING);
        cell.setCellValue("name");
        cell.setCellStyle(style);
        
        //member birthday
        cell = row.createCell(4,CellType.STRING);
        cell.setCellValue("birthday");
        cell.setCellStyle(style);
        
        //member phone
        cell = row.createCell(5,CellType.STRING);
        cell.setCellValue("phone");
        cell.setCellStyle(style);
        
        //member email
        cell = row.createCell(6,CellType.STRING);
        cell.setCellValue("email");
        cell.setCellStyle(style);
        
        String name = list.get(0).getGroup_name();
        //Data
        for(Member member :list)
        {
        	 rownum++;
             row = sheet.createRow(rownum);
             
             // Group id (A)
             cell = row.createCell(0, CellType.STRING);
             cell.setCellValue(member.getGroup_id());
             
             //Group name (B)
            
             cell = row.createCell(1, CellType.STRING);
             cell.setCellValue(member.getGroup_name());
             
             //member id (C)
             cell = row.createCell(2, CellType.STRING);
             cell.setCellValue(member.getId());
             
             //member name (D)
             
             cell = row.createCell(3, CellType.STRING);
             cell.setCellValue(member.getName());
             
             //member birthday (E)
             
             cell = row.createCell(4);
             cell.setCellValue(member.getBirthday());
             cell.setCellStyle(cellStyle);
             
             //member phone (F)
             
             cell = row.createCell(5, CellType.STRING);
             cell.setCellValue(member.getPhone());
             
             //member email (G)
             
             cell = row.createCell(6, CellType.STRING);
             cell.setCellValue(member.getEmail());
           
             
        }

        if(location.equals(""))
        {
       	 String user = System.getProperty("user.home");
       	 File file = new File( user+"/Desktop/"+name+".xls");
       	 file.getParentFile().mkdirs();
       	 
            FileOutputStream outFile = new FileOutputStream(file);
            workbook.write(outFile);
            System.out.println("Created file: " + file.getAbsolutePath());
            locationOut = file.getAbsolutePath();
        }
        else
        {
       	 File file = new File(location);
       	 file.getParentFile().mkdirs();
       	 
            FileOutputStream outFile = new FileOutputStream(file);
            workbook.write(outFile);
            System.out.println("Created file: " + file.getAbsolutePath());
            locationOut = file.getAbsolutePath();
        }
        
        return locationOut;
		

	}
	
	public static String ExportAllMember(ArrayList<Member> list, String location) throws IOException 
	{
		HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet("Members sheet");
        String locationOut = "";
        int rownum = 0;
        Cell cell;
        Row row;
        HSSFCellStyle style = createStyleForTitle(workbook);
        CellStyle cellStyle = workbook.createCellStyle();
        CreationHelper createHelper = workbook.getCreationHelper();
        cellStyle.setDataFormat(
            createHelper.createDataFormat().getFormat("m/d/yy h:mm"));
        
        
        row = sheet.createRow(rownum);
        //Group Id
        cell = row.createCell(0,CellType.STRING);
        cell.setCellValue("Group Id");
        cell.setCellStyle(style);
        
        //Group name
        cell = row.createCell(1,CellType.STRING);
        cell.setCellValue("Group Name");
        cell.setCellStyle(style);
        
        //Member id
        cell = row.createCell(2,CellType.STRING);
        cell.setCellValue("id");
        cell.setCellStyle(style);
        
        //Member name
        cell = row.createCell(3,CellType.STRING);
        cell.setCellValue("name");
        cell.setCellStyle(style);
        
        //member birthday
        cell = row.createCell(4,CellType.STRING);
        cell.setCellValue("birthday");
        cell.setCellStyle(style);
        
        //member phone
        cell = row.createCell(5,CellType.STRING);
        cell.setCellValue("phone");
        cell.setCellStyle(style);
        
        //member email
        cell = row.createCell(6,CellType.STRING);
        cell.setCellValue("email");
        cell.setCellStyle(style);
        
      
        //Data
        for(Member member :list)
        {
        	 rownum++;
             row = sheet.createRow(rownum);
             
             // Group id (A)
             cell = row.createCell(0, CellType.STRING);
             cell.setCellValue(member.getGroup_id());
             
             //Group name (B)
            
             cell = row.createCell(1, CellType.STRING);
             cell.setCellValue(member.getGroup_name());
             
             //member id (C)
             cell = row.createCell(2, CellType.STRING);
             cell.setCellValue(member.getId());
             
             //member name (D)
             
             cell = row.createCell(3, CellType.STRING);
             cell.setCellValue(member.getName());
             
             //member birthday (E)
             
             cell = row.createCell(4);
            
             cell.setCellValue(member.getBirthday());
             cell.setCellStyle(cellStyle);
             
             //member phone (F)
             
             cell = row.createCell(5, CellType.STRING);
             cell.setCellValue(member.getPhone());
             
             //member email (G)
             
             cell = row.createCell(6, CellType.STRING);
             cell.setCellValue(member.getEmail());       
             
            
                         
        }
        if(location.equals(""))
        {
       	 String user = System.getProperty("user.home");
       	 File file = new File( user+"/Desktop/MemberAll.xls");
       	 file.getParentFile().mkdirs();
       	 
            FileOutputStream outFile = new FileOutputStream(file);
            workbook.write(outFile);
            System.out.println("Created file: " + file.getAbsolutePath());
            locationOut = file.getAbsolutePath();
        }
        else
        {
       	 File file = new File(location);
       	 file.getParentFile().mkdirs();
       	 
            FileOutputStream outFile = new FileOutputStream(file);
            workbook.write(outFile);
            System.out.println("Created file: " + file.getAbsolutePath());
            locationOut = file.getAbsolutePath();
        }
        return locationOut;
		

	}
	public static String ExportAllGroup(ArrayList<Group_regist> list,String location) throws IOException 
	{
		HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet("Groups sheet");
        String locationOut = "";
        int rownum = 0;
        Cell cell;
        Row row;
        HSSFCellStyle style = createStyleForTitle(workbook);
        CellStyle cellStyle = workbook.createCellStyle();
        CreationHelper createHelper = workbook.getCreationHelper();
        cellStyle.setDataFormat(
            createHelper.createDataFormat().getFormat("m/d/yy h:mm"));
        
        
        row = sheet.createRow(rownum);
        
        //Id
        cell = row.createCell(0,CellType.STRING);
        cell.setCellValue("id");
        cell.setCellStyle(style);
        //Name
        cell = row.createCell(1,CellType.STRING);
        cell.setCellValue("Name");
        cell.setCellStyle(style);
        //foundation
        cell = row.createCell(2,CellType.STRING);
        cell.setCellValue("foundation");
        
        //leader_name
        cell = row.createCell(3,CellType.STRING);
        cell.setCellValue("Leader name");
        cell.setCellStyle(style);
        //ld_birthday
        cell = row.createCell(4,CellType.STRING);
        cell.setCellValue("Leader birthday");
        cell.setCellStyle(style);
        //ld_phone
        cell = row.createCell(5,CellType.STRING);
        cell.setCellValue("Leader phone");
        cell.setCellStyle(style);
        
        //ld_identity
        cell = row.createCell(6,CellType.STRING);
        cell.setCellValue("Leader Identity");
        cell.setCellStyle(style);
        //ld_idStudent
        cell = row.createCell(7,CellType.STRING);
        cell.setCellValue("Leader idStudent");
        cell.setCellStyle(style);
        //email
        cell = row.createCell(8,CellType.STRING);
        cell.setCellValue("Email");
        cell.setCellStyle(style);
        //school
        cell = row.createCell(9,CellType.STRING);
        cell.setCellValue("School");
        cell.setCellStyle(style);
        //achievement
        cell = row.createCell(10,CellType.STRING);
        cell.setCellValue("Achievement");
        cell.setCellStyle(style);
        //description
        cell = row.createCell(11,CellType.STRING);
        cell.setCellValue("Description");
        cell.setCellStyle(style);
        //status
        cell = row.createCell(12,CellType.STRING);
        cell.setCellValue("Status");
        cell.setCellStyle(style);
        
        //Data
        for(Group_regist group : list)
        {
        	rownum++;
            row = sheet.createRow(rownum);
            //Id (A)
            cell = row.createCell(0, CellType.STRING);
            cell.setCellValue(group.getId());
            //Name (B)
            cell= row.createCell(1,CellType.STRING);
            cell.setCellValue(group.getName());
            //Foundation (C)
            cell = row.createCell(2);
            cell.setCellValue(group.getFoundation());
            cell.setCellStyle(cellStyle);
            //Leader name (D)
            cell = row.createCell(3,CellType.STRING);
            cell.setCellValue(group.getLeader_name());
            
            //Leader birthday (E)
            cell = row.createCell(4);
            cell.setCellValue(group.getLd_birthday());
            cell.setCellStyle(cellStyle);
            
            //Leader phone (F)
            cell = row.createCell(5,CellType.STRING);
            cell.setCellValue(group.getLd_phone());
            
            //Leader identity (G)
            cell = row.createCell(6, CellType.STRING);
            cell.setCellValue(group.getLd_identity());
            
            //Leader idStudent (H)
            cell=row.createCell(7,CellType.STRING);
            cell.setCellValue(group.getLd_idStudent());
            
            //Email (J)
            cell = row.createCell(8,CellType.STRING);
            cell.setCellValue(group.getEmail());
            
            //School (K)
            cell = row.createCell(9,CellType.STRING);
            cell.setCellValue(group.getSchool());
            
            //Achievement (L)
            cell = row.createCell(10,CellType.STRING);
            String achive = group.getAchivement();
            if(!achive.equals(""))
            {
            	cell.setCellValue(achive);
            }
            else
            	cell.setCellValue("No achivement");
            
            
            //Description (M)
            cell = row.createCell(11,CellType.STRING);
            cell.setCellValue(group.getDescription());
            //Status (N)
            cell = row.createCell(12,CellType.STRING);
            Integer stt = group.getStatus();
            if(stt == 0)
            {
            	cell.setCellValue("Chưa xem");
            }
            else
            	cell.setCellValue("Đã xem");        
            
            
            
        }
        if(location.equals(""))
        {
       	 String user = System.getProperty("user.home");
       	 File file = new File( user+"/Desktop/GroupAll.xls");
       	 file.getParentFile().mkdirs();
       	 
            FileOutputStream outFile = new FileOutputStream(file);
            workbook.write(outFile);
            System.out.println("Created file: " + file.getAbsolutePath());
            locationOut = file.getAbsolutePath();
        }
        else
        {
       	 File file = new File(location);
       	 file.getParentFile().mkdirs();
       	 
            FileOutputStream outFile = new FileOutputStream(file);
            workbook.write(outFile);
            System.out.println("Created file: " + file.getAbsolutePath());
            locationOut = file.getAbsolutePath();
        }
		return locationOut;
	}
}
