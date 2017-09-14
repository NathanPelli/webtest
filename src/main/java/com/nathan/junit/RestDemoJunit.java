package com.nathan.junit;

import javax.ws.rs.core.MultivaluedMap;

import org.junit.Before;
import org.junit.Test;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.core.util.MultivaluedMapImpl;

/**
 * @author Nathan
 * 2017年9月13日 下午5:16:37
 * WebService的单元测试
 */
public class RestDemoJunit {
	private String url = "http://localhost:8080/restful/rest/students";
	@Before
	public void init(){
		
	}
	@Test
	public void testDelete(){
		Client client = Client.create();
		WebResource webResource = client.resource(url + "/delete/1");
		ClientResponse response = webResource.delete(ClientResponse.class);
		
		System.out.println("Response for delete request: " + response.getStatus());
	}
	@Test
	public void testPut(){
		Client client = Client.create();
		WebResource webResource = client.resource(url + "/put");
		MultivaluedMap queryParams = new MultivaluedMapImpl();
		queryParams.add("studentid", "2");
		queryParams.add("name", "nametest");
		queryParams.add("dept", "depttest");
		ClientResponse response = webResource.queryParams(queryParams).put(ClientResponse.class, "foo:test");
		System.out.println("Response for put request: " + response.getStatus());
	}
}
