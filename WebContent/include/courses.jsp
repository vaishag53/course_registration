<%!	
	String	coursesdb(String name,String desc,String img,String extra,int cid,int uid)
	{
		String out= "<div class=\"row mt-5 mb-5\">"+
						"<div class=\"col-sm-11\">"+
        					"<div class=\"media\">"+
              					"<img class=\"d-flex mr-3 img-thumbnail align-self-center\" src="+img+" alt=\"html\">"+
              					"<div class=\"media-body\">"+
                  					"<h2 class=\"mt-0\">"+name+" "+extra+"</h2>"+
                  					"<p class=\"d-none d-sm-block\">"+desc+"</p>"+
		                  			"<form  action=\"Add\" method=\"post\">"+
		                  				"<input type=\"hidden\" name=\"cid\" value="+cid+">"+
			                  			"<input type=\"hidden\" name=\"uid\" value="+uid+">"+
										"<button type=\"submit\" name=\"add\" class=\"btn btn-success\">Add to your Courses</button>"+		       
									"</form>"+
		              			"</div>"+
          					"</div>"+
      					"</div>"+
  					"</div>";
		return out;	
	}
	String	courses(String name,String desc,String img,String extra,int cid)
	{
		String out= "<div class=\"row mt-5 mb-5\">"+
					"<div class=\"col-sm-11\">"+
    					"<div class=\"media\">"+
          					"<img class=\"d-flex mr-3 img-thumbnail align-self-center\" src="+img+" alt=\"html\">"+
          					"<div class=\"media-body\">"+
              					"<h2 class=\"mt-0\">"+name+" "+extra+"</h2>"+
              					"<p class=\"d-none d-sm-block\">"+desc+"</p>"+	                  				    		                  
              						"<a data-target=\"#loginfirst\" data-toggle=\"modal\" data-backdrop=\"static\" class=\"btn btn-success\">Add to your Courses</a>"+              									       
	              			"</div>"+
      					"</div>"+
  					"</div>"+
					"</div>";
	return out;	
	}
	String	dashcourse(String name,String desc,String img,String extra,int cid,int uid)
	{
		String out= "<div class=\"row mt-5 mb-5\">"+
						"<div class=\"col-sm-11\">"+
        					"<div class=\"media\">"+
              					"<img class=\"d-flex mr-3 img-thumbnail align-self-center\" src="+img+" alt=\"html\">"+
              					"<div class=\"media-body\">"+
                  					"<h2 class=\"mt-0\">"+name+" "+extra+"</h2>"+
                  					"<p class=\"d-none d-sm-block\">"+desc+"</p>"+
		                  			"<form  action=\"Remove\" method=\"post\">"+
		                  				"<input type=\"hidden\" name=\"cid\" value="+cid+">"+
			                  			"<input type=\"hidden\" name=\"uid\" value="+uid+">"+
										"<button type=\"submit\" name=\"add\" class=\"btn btn-success\">Remove from your Courses</button>"+		       
									"</form>"+
		              			"</div>"+
          					"</div>"+
      					"</div>"+
  					"</div>";
		return out;	
	}

%>
