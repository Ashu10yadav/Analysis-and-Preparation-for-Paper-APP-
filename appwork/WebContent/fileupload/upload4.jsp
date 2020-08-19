<%@ include file="../dbconnect.jsp" %>
<%
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = "/home/aman/eclipse-workspace/appwork/WebContent/image/uploaded/";
  // String filePath = getServletContext().getContextPath() + "/WebContent/images/";
  String newPath4 = null;

   // Verify the content type
   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
     
      factory.setRepository(new File(filePath));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               String fileName = fi.getName();
               
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            	
               // Write the file
                System.out.println(filePath + fileName);
               String pathx = filePath + fileName;
               out.println(pathx);
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }
               fi.write( file ) ;
               out.println("Uploaded Filename: " + filePath + 
               fileName + "<br>");
               newPath4 = filePath + fileName; //File path is shown here
               session.setAttribute("MyAttribute4", newPath4);
               %>
               <core:set var="msgf4" value="Document uploaded" scope="session"/>
               <core:redirect url="../db.jsp"></core:redirect>                             
               <%
             }
         }
         out.println("</body>");
         out.println("</html>");
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
  
%>