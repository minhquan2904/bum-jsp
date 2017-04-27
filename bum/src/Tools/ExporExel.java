package Tools;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

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
             
             cell = row.createCell(4, CellType.STRING);
             cell.setCellValue(member.getBirthday());
             
             //member phone (F)
             
             cell = row.createCell(5, CellType.STRING);
             cell.setCellValue(member.getPhone());
             
             //member email (G)
             
             cell = row.createCell(6, CellType.STRING);
             cell.setCellValue(member.getEmail());
           
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
             
             
        }
        
        return locationOut;
		

	}
}
