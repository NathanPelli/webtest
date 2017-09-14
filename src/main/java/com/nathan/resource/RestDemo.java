package com.nathan.resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;

import com.nathan.pojo.Student;

/**
 * @author Nathan
 * 2017年9月13日 下午3:32:28
 */
@Path("/students")
public class RestDemo {
	private static final Logger logger = Logger.getLogger(RestDemo.class);
	private static int index = 1;
	private Map<Integer,Student> student_map = new HashMap<Integer,Student>();
	public RestDemo(){
		if(student_map.size() == 0){
			student_map.put(index,new Student(index++,"Frank","cs"));
			student_map.put(index,new Student(index++,"Jack","ps"));
		}
	}
	@GET
	@Path("{studentid}")
	@Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
	public Student getMeta(@PathParam("studentid") String studentid){
		if(student_map.containsKey(studentid)){
			return student_map.get(studentid);
		}else{
			return new Student(0, "Nil", "Nil");
		}
	}
	@GET
	@Path("list")
	@Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
	public List<Student> getAllStudents(){
		List<Student> list = new ArrayList<Student>();
		list.addAll(student_map.values());
		return list;
	}
	
	@POST
	@Path("add")
	@Produces("text/plain")
	public String addStudent(@FormParam("name") String name,@FormParam("dept") String dept){
		student_map.put(index, new Student(index++, name, dept));
		return String.valueOf(index-1);
	}
	
	@DELETE
	@Path("delete/{studentid}")
	@Produces("text/plain")
	public String removeStudent(@PathParam("studentid") String studentid){
		logger.info("Receieving quest for deleting student: " + studentid);
		Student removed = student_map.remove(studentid);
		if(removed == null){
			return "failed";
		}else{
			return "success";
		}
	}
	@PUT
	@Path("put")
	@Produces("text/plain")
	public String putStudent(@QueryParam("studentid") int studentid,@QueryParam("name") String name,@QueryParam("dept") String dept){
		logger.info("Receieving quest for putting student: " + studentid);
		         if(!student_map.containsKey(studentid))
		             return "failed!";
		         else
		             student_map.put(studentid, new Student(studentid, name, dept));
		         
		         return String.valueOf(studentid);
	}
}
