<html>



{{ partial('partials/header')}}

<body>

	<div class="body clearfix">

  <div class="div-table">

 <div class="headRow">
             	
                <div class="div-table-cell" align="center"><div class="text_color"><font size="8">Edit RSVP</font></div></div>
                
             </div> 
             <form method = "post" action="editrsvp/edit">    
              <div class="div-table">
           
             <div class="div-table-row"> 
             	<div class="div-table-col2">
				          
				               <div class="divCell">Edit Online RSVP</div>
				               
				                <div class="divCell">Edit the form and click "Edit"</div>
				                <div class="divCell">The deadline to make changes is Feburary 15, 2017</div>
				
				             </div>
				               <div class="div-table-row">
				            <div class="div-table-col">       
				         
				                </div>                  
				                 <div class="div-table-col1">         
				            <div class="div-table-cell"><input type="hidden" name="id"/></div>
				               </div>
				              </div>
				              
				               
				            <div class="div-table-row">
				            <div class="div-table-col">       
				                 <div class="div-table-cell">Attending?</div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell"><select id="attendingRSPV" name="attending" value = "{{post.attending}}" onchange="myFunction()">
				               
				               
				               	<option {%if post.attending == 1%}selected{%endif%} value="1">Yes</option>
				               	<option  {%if post.attending == 0%}selected{%endif%} value="0">No</option>
				               </select></div>
				               </div>
				              </div>
				             
				               <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">How Many Guest?</div>
				                   </div>
				                   <div class="div-table-col1">
				                   <div class="divCell">
				                     
										<select name="number_of_guest" id="guest">
											<option  {%if post.number_of_guest == 0%}selected{%endif%} value="0">0</option>
							               	<option  {%if post.number_of_guest == 1%}selected{%endif%} value="1">1</option>
							               	<option  {%if post.number_of_guest == 2%}selected{%endif%} value="2">2</option>
							               	<option  {%if post.number_of_guest == 3%}selected{%endif%} value="3">3</option>
							               	<option  {%if post.number_of_guest == 4%}selected{%endif%} value="4">4</option>
							               	<option  {%if post.number_of_guest == 5%}selected{%endif%} value="5">5</option>
						           		</select>									
									</div>
				            		</div>
				              </div>       
				                  
				                  
				                   <div class="div-table-row">
				            		<div class="div-table-col">  
				               <div class="div-table-cell">First Name</div>
				               </div>
				               <div class="div-table-col1">  
				                <div class="div-table-cell"><input name="first_name" value="{{post.first_name}}"/></div>
				               </div>
				               </div>
				               
				                <div class="div-table-row">
				            		<div class="div-table-col"> 
				               <div class="div-table-cell">Last Name</div>
				               </div>
				               	<div class="div-table-col1"> 
				                <div class="div-table-cell"><input name="last_name" value="{{post.last_name}}"/></div>
				                     </div>
				                     </div>
				              
				               <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Email Address</div>
				          </div>
				          	<div class="div-table-col1">  
				          <div class="div-table-cell"><input name="email" value="{{post.email}}" readonly/></div>
				          </div>
				          </div>
				          
				             <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Street Address</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="address_line_1" value="{{post.address_line_1}}" /></div>
				          </div>
				          </div>
				             <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">2nd Street Address</div>
				           </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="address_line_2" value="{{post.address_line_2}}" /></div>
				           </div>
				          </div>
				          
				          
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">City</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="city" value="{{post.city}}" /></div>
				          </div>
				          </div>
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">State</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell">
								<select name="state" size="1">
								 <option  {%if post.state == 'AL'%}selected{%endif%}  value="AL">Alabama</option>
								 <option {%if post.state == 'AK'%}selected{%endif%} value="AK">Alaska</option>
								 <option {%if post.state == 'AZ'%}selected{%endif%} value="AZ">Arizona</option>
								 <option {%if post.state == 'AR'%}selected{%endif%} value="AR">Arkansas</option>
								 <option {%if post.state == 'CA'%}selected{%endif%} value="CA">California</option>
								 <option {%if post.state == 'CO'%}selected{%endif%} value="CO">Colorado</option>
								 <option {%if post.state == 'CT'%}selected{%endif%} value="CT">Connecticut</option>
								 <option {%if post.state == 'DE'%}selected{%endif%} value="DE">Delaware</option>
								 <option {%if post.state == 'DC'%}selected{%endif%} value="DC">Dist of Columbia</option>
								 <option {%if post.state == 'FL'%}selected{%endif%} value="FL">Florida</option>
								 <option {%if post.state == 'GA'%}selected{%endif%} value="GA">Georgia</option>
								 <option {%if post.state == 'HI'%}selected{%endif%} value="HI">Hawaii</option>
								 <option {%if post.state == 'ID'%}selected{%endif%} value="ID">Idaho</option>
								 <option {%if post.state == 'IL'%}selected{%endif%} value="IL">Illinois</option>
								 <option {%if post.state == 'IN'%}selected{%endif%} value="IN">Indiana</option>
								 <option {%if post.state == 'IA'%}selected{%endif%} value="IA">Iowa</option>
								 <option {%if post.state == 'KS'%}selected{%endif%} value="KS">Kansas</option>
								 <option {%if post.state == 'KY'%}selected{%endif%} value="KY">Kentucky</option>
								 <option {%if post.state == 'LA'%}selected{%endif%} value="LA">Louisiana</option>
								 <option {%if post.state == 'ME'%}selected{%endif%} value="ME">Maine</option>
								 <option {%if post.state == 'MD'%}selected{%endif%} value="MD">Maryland</option>
								 <option {%if post.state == 'MA'%}selected{%endif%} value="MA">Massachusetts</option>
								 <option {%if post.state == 'MI'%}selected{%endif%} value="MI">Michigan</option>
								 <option {%if post.state == 'MN'%}selected{%endif%} value="MN">Minnesota</option>
								 <option {%if post.state == 'MS'%}selected{%endif%} value="MS">Mississippi</option>
								 <option {%if post.state == 'MO'%}selected{%endif%} value="MO">Missouri</option>
								 <option {%if post.state == 'MT'%}selected{%endif%} value="MT">Montana</option>
								 <option {%if post.state == 'NE'%}selected{%endif%} value="NE">Nebraska</option>
								 <option {%if post.state == 'NV'%}selected{%endif%} value="NV">Nevada</option>
								 <option {%if post.state == 'NH'%}selected{%endif%} value="NH">New Hampshire</option>
								 <option {%if post.state == 'NJ'%}selected{%endif%} value="NJ">New Jersey</option>
								 <option {%if post.state == 'NM'%}selected{%endif%} value="NM">New Mexico</option>
								 <option {%if post.state == 'NY'%}selected{%endif%} value="NY">New York</option>
								 <option {%if post.state == 'NC'%}selected{%endif%} value="NC">North Carolina</option>
								 <option {%if post.state == 'ND'%}selected{%endif%} value="ND">North Dakota</option>
								 <option {%if post.state == 'OH'%}selected{%endif%} value="OH">Ohio</option>
								 <option {%if post.state == 'OK'%}selected{%endif%} value="OK">Oklahoma</option>
								 <option {%if post.state == 'OR'%}selected{%endif%} value="OR">Oregon</option>
								 <option {%if post.state == 'PA'%}selected{%endif%} value="PA">Pennsylvania</option>
								 <option {%if post.state == 'RI'%}selected{%endif%} value="RI">Rhode Island</option>
								 <option {%if post.state == 'SC'%}selected{%endif%} value="SC">South Carolina</option>
								 <option {%if post.state == 'SD'%}selected{%endif%} value="SD">South Dakota</option>
								 <option {%if post.state == 'TN'%}selected{%endif%} value="TN">Tennessee</option>
								 <option {%if post.state == 'TX'%}selected{%endif%} value="TX">Texas</option>
								 <option {%if post.state == 'UT'%}selected{%endif%} value="UT">Utah</option>
								 <option {%if post.state == 'VT'%}selected{%endif%} value="VT">Vermont</option>
								 <option {%if post.state == 'VA'%}selected{%endif%} value="VA">Virginia</option>
								 <option {%if post.state == 'WA'%}selected{%endif%} value="WA">Washington</option>
								 <option {%if post.state == 'WV'%}selected{%endif%} value="WV">West Virginia</option>
								 <option {%if post.state == 'WI'%}selected{%endif%} value="WI">Wisconsin</option>
								 <option {%if post.state == 'WY'%}selected{%endif%} value="WY">Wyoming</option>
								</select>
								
								</div>
				          </div>
				          </div>
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">ZIP</div>
				           </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><input name="zip" value="{{post.zip}}" /></div>   
				           </div>
				          </div>
				          
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">Contact Number</div>
				          </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><input name="phone_number" id="txtPhoneNumber" value="{{post.phone_number}}" /></div>
				          </div>
				          </div>
				          
				              
				                
				             
				 <div class="div-table-row">         
				<input class="push_button" type="submit" value="Save Edit" />
				</div>
      </div>
       </div>
				</form>
				</div>
	</div>


		</div>
		
	
		
	</div>
{{partial('partials/footer')}}

</body>
</html>

