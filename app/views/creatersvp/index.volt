<html>
{{ partial('partials/header')}}

<body>
	<div class="body clearfix">
	
  <div class="div-table">

 <div class="headRow">
             	
                <div class="div-table-cell" align="center"><div class="text_color"><font size="8">RSVP	</font></div></div>
                
             </div> 
             <form method = "post" action="rsvp/submit">    
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
				            <div class="div-table-cell"><input type="hidden" name="id" value="2-<?php echo $user_email; ?>" /></div>
				               </div>
				              </div>
				              
				               
				            <div class="div-table-row">
				            <div class="div-table-col">       
				                 <div class="div-table-cell">Attending?</div>
				                </div>                  
				                 <div class="div-table-col1">         
				               <div class="div-table-cell"><select id="attendingRSPV" name="attending" onchange="myFunction()">
				               	<option value="1">Yes</option>
				               	<option value="0">No</option>
				               </select></div>
				               </div>
				              </div>
				             <script>
				             function myFunction () {
									var e = document.getElementById('attendingRSPV');
									var strUser = e.options[e.selectedIndex].text;
				             	if(strUser == 'No')
				             	document.getElementById('number_of_guest').style.visibility="hidden";
				         else
				         	document.getElementById('number_of_guest').style.visibility="visible";
				             }
				             	
				             </script> 
				              <?php
				             
				              ?>
				               <div class="div-table-row" id="guest_num">
				            		<div class="div-table-col">   
				                  		<div class="div-table-cell">How Many Guest?</div>
				                   </div>
				                   <div class="div-table-col1">
				                   <div class="divCell">
				                     
										<select name="number_of_guest" id="guest">
											<option value="0">0</option>
							               	<option value="1">1</option>
							               	<option value="2">2</option>
							               	<option value="3">3</option>
							               	<option value="4">4</option>
							               	<option value="5">5</option>
						           		</select>									
									</div>
				            		</div>
				              </div>       
				                  
				                  
				                   <div class="div-table-row">
				            		<div class="div-table-col">  
				               <div class="div-table-cell">First Name</div>
				               </div>
				               <div class="div-table-col1">  
				                <div class="div-table-cell"><input name="first_name" /></div>
				               </div>
				               </div>
				               
				                <div class="div-table-row">
				            		<div class="div-table-col"> 
				               <div class="div-table-cell">Last Name</div>
				               </div>
				               	<div class="div-table-col1"> 
				                <div class="div-table-cell"><input name="last_name" /></div>
				                     </div>
				                     </div>
				              
				               <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Email Address</div>
				          </div>
				          
				          <div class="div-table-cell"><input name="email" value="{{post.password}}" readonly/></div>
				         
				     
				          
				             <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Street Address</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="address_line_1" /></div>
				          </div>
				          </div>
				             <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">2nd Street Address</div>
				           </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="address_line_2" /></div>
				           </div>
				          </div>
				          
				          
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">City</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="city" /></div>
				          </div>
				          </div>
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">State</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell">
								<select name="state" size="1">
								 <option value="AL">Alabama</option>
								 <option value="AK">Alaska</option>
								 <option value="AZ">Arizona</option>
								 <option value="AR">Arkansas</option>
								 <option value="CA">California</option>
								 <option value="CO">Colorado</option>
								 <option value="CT">Connecticut</option>
								 <option value="DE">Delaware</option>
								 <option value="DC">Dist of Columbia</option>
								 <option value="FL">Florida</option>
								 <option value="GA">Georgia</option>
								 <option value="HI">Hawaii</option>
								 <option value="ID">Idaho</option>
								 <option value="IL">Illinois</option>
								 <option value="IN">Indiana</option>
								 <option value="IA">Iowa</option>
								 <option value="KS">Kansas</option>
								 <option value="KY">Kentucky</option>
								 <option value="LA">Louisiana</option>
								 <option value="ME">Maine</option>
								 <option value="MD">Maryland</option>
								 <option value="MA">Massachusetts</option>
								 <option value="MI">Michigan</option>
								 <option value="MN">Minnesota</option>
								 <option value="MS">Mississippi</option>
								 <option value="MO">Missouri</option>
								 <option value="MT">Montana</option>
								 <option value="NE">Nebraska</option>
								 <option value="NV">Nevada</option>
								 <option value="NH">New Hampshire</option>
								 <option value="NJ">New Jersey</option>
								 <option value="NM">New Mexico</option>
								 <option value="NY">New York</option>
								 <option value="NC">North Carolina</option>
								 <option value="ND">North Dakota</option>
								 <option value="OH">Ohio</option>
								 <option value="OK">Oklahoma</option>
								 <option value="OR">Oregon</option>
								 <option value="PA">Pennsylvania</option>
								 <option value="RI">Rhode Island</option>
								 <option value="SC">South Carolina</option>
								 <option value="SD">South Dakota</option>
								 <option value="TN">Tennessee</option>
								 <option value="TX">Texas</option>
								 <option value="UT">Utah</option>
								 <option value="VT">Vermont</option>
								 <option value="VA">Virginia</option>
								 <option value="WA">Washington</option>
								 <option value="WV">West Virginia</option>
								 <option value="WI">Wisconsin</option>
								 <option value="WY">Wyoming</option>
								</select>
								
								</div>
				          </div>
				          </div>
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">ZIP</div>
				           </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><input name="zip" /></div>   
				           </div>
				          </div>
				          
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">Contact Number</div>
				          </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><input  id="txtPhoneNumber" name="phone_number" /></div>
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