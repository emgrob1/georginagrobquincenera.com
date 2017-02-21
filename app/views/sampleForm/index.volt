
<html>
{{ partial('partials/header')}}

<body>
	<div class="body clearfix">
	
  <div class="div-table">

 <div class="headRow">
             	
                <div class="div-table-cell" align="center"><div class="text_color"><font size="8">RSVP	</font></div>
                </div>
                </div>
      
             <form method = "post" action="sampleform/test">  
                  <div class="div-table">
                  
             <div class="div-table-row"> 
             	<div class="div-table-col2">
				          
				               <div class="divCell">Online RSVP</div>
				               
				                <div class="divCell">Fillout the form and click "Submit"</div>
				                <div class="divCell">If you've already submitted a RSVP you can edit, but the deadline to make changes is January 15, 2017</div>
				
				             </div>
                    <div class="div-table-row">
				            <div class="div-table-col">       
				         
				                </div>                  
				                 <div class="div-table-col1">         
				            <div class="div-table-cell"><input type="hidden" name="id" /></div>
				               </div>
				                 </div>
				              
				 <div class="div-table-row">
				            <div class="div-table-col">       
				                 <div class="div-table-cell">  <label for="attending">Attending</label>
				        </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				        {{ select_static('attending', ['1' : 'Yes','0' : 'No'])}}
</div>
				               </div>
				              </div>
				             <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">  <label for="number_of_guest">Number of Guest</label>
				        </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				        {{ select_static('number_of_guest', ['0' : '0','1' : '1', '2' : '2', '3' : '3', '4' : '4', '5' : '5']) }}
				           </div> 
				</div>
				               </div>
				   <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell"> <label for="first_name">First Name</label>
				    </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("first_name", "size": 32) }}
				     </div>
				     </div>
				               </div>
	   <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">  <label for="last_name">Last Name</label>
				 </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("last_name", "size": 42) }}
				     </div>
				     </div>
				               </div>
		   <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">  <label for="address_line_1">Street Address</label>
				   </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("address_line_1", "size": 50) }}
				     </div>
				     </div>
				               </div>
	   <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell"><label for="address_line_2">Address Line 2</label>
				 </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("address_line_2", "size": 10) }}
				     </div>
				     </div>
				               </div>
		   <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">    <label for="city">City</label>
				   </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("city", "size": 30) }}
				     </div>
				     </div>
				               </div>
			   <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">     <label for="state">State</label>
				  </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ select_static('state', [
							 'AL': 'Alabama', 
								 'AK' : 'Alaska', 
								 'AZ' : 'Arizona', 
								 'AR' : 'Arkansas', 
								 'CA' : 'California', 
								 'CO' : 'Colorado', 
								 'CT' : 'Connecticut', 
								 'DE' : 'Delaware', 
								 'DC' : 'Dist of Columbia', 
								 'FL' : 'Florida', 
								 'GA' : 'Georgia', 
								 'HI' : 'Hawaii', 
								 'ID' : 'Idaho', 
								 'IL' : 'Illinois', 
								 'IN' : 'Indiana', 
								 'IA' : 'Iowa', 
								 'KS' : 'Kansas', 
								 'KY' : 'Kentucky', 
								 'LA' : 'Louisiana', 
								 'ME' : 'Maine', 
								 'MD' : 'Maryland', 
								 'MA' : 'Massachusetts', 
								 'MI' : 'Michigan', 
								 'MN' : 'Minnesota', 
								 'MS' : 'Mississippi', 
								 'MO' : 'Missouri', 
								 'MT' : 'Montana', 
								 'NE' : 'Nebraska', 
								 'NV' : 'Nevada', 
								 'NH' : 'New Hampshire', 
								 'NJ' : 'New Jersey', 
								 'NM' : 'New Mexico', 
								 'NY' : 'New York', 
								 'NC' : 'North Carolina', 
								 'ND' : 'North Dakota', 
								 'OH' : 'Ohio', 
								 'OK' : 'Oklahoma', 
								 'OR' : 'Oregon', 
								 'PA' : 'Pennsylvania', 
								 'RI' : 'Rhode Island', 
								 'SC' : 'South Carolina', 
								 'SD' : 'South Dakota', 
								 'TN' : 'Tennessee', 
								 'TX' : 'Texas', 
								 'UT' : 'Utah', 
								 'VT' : 'Vermont', 
								 'VA' : 'Virginia', 
								 'WA' : 'Washington', 
								 'WV' : 'West Virginia', 
								 'WI' : 'Wisconsin', 
								 'WY' : 'Wyoming'


					]) }}
				     
				     </div>
				     </div>
				               </div>
				     
				     <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">    <label for="zip">Zip Code</label>
				    </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("zip", "size": 10) }}
				     </div>
				     </div>
				               </div>
				     
				      <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">   <label for="email">Email</label>
				   </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("email", "size": 35) }}
				     </div>
				     </div>
				               </div>
				     
		   <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">   <label for="phone_number">Contact Number</label>
				 </div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell">
				    {{ text_field("phone_number", "size": 12) }}
				       </div>
				 </div>
		             </div>
		             
				 <div class="div-table-row">         
				<input class="push_button" type="submit" value="Submit" />
				</div>
      </div>
       </div>
				</form>
				</div>
	</div>

	</div>
{{partial('partials/footer')}}

</body>
</html>