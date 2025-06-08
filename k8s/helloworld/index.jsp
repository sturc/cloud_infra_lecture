<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.io.*,java.util.*, javax.servlet.*, java.net.*" 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Hello World JSP</title></head>
<body>
<%! Date creationDate = new Date();%> 
<%!
        public static boolean isPrime(long num) {
           if (num <= 1L) {
              return false;
            }
            for (long i = 2L; i < num; i++) {
                if (num % i == 0L) {
                    return false;
                }
            }
            return true;
        }
%>
<p>    
	<% out.println("<h1><font color=red>Hello World</h1>"); 
       out.println("<h2>Created: " + creationDate.toString() + "</h2>"); 
       Date date = new Date();
       out.println("<h2 align = \"center\"> Accessed on: " +date.toString()+"</h2>");
       InetAddress iAddr = InetAddress.getLocalHost();
       out.println("<h2 align = \"center\"> Host IP : " + iAddr.getHostName()+"</h2>");
       out.println("<br> 6620830889 is prime? " + isPrime(6620830889L));
       out.println("<br> "+date.getTime()+" is prime? " + isPrime(date.getTime()));
    %>
</p>
</body>
</html>
