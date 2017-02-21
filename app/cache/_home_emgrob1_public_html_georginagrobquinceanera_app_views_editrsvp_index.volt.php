<html>



<?php echo $this->partial('partials/header'); ?>

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
				               <div class="div-table-cell"><select id="attendingRSPV" name="attending" value = "<?php echo $post->attending; ?>" onchange="myFunction()">
				               
				               
				               	<option <?php if ($post->attending == 1) { ?>selected<?php } ?> value="1">Yes</option>
				               	<option  <?php if ($post->attending == 0) { ?>selected<?php } ?> value="0">No</option>
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
											<option  <?php if ($post->number_of_guest == 0) { ?>selected<?php } ?> value="0">0</option>
							               	<option  <?php if ($post->number_of_guest == 1) { ?>selected<?php } ?> value="1">1</option>
							               	<option  <?php if ($post->number_of_guest == 2) { ?>selected<?php } ?> value="2">2</option>
							               	<option  <?php if ($post->number_of_guest == 3) { ?>selected<?php } ?> value="3">3</option>
							               	<option  <?php if ($post->number_of_guest == 4) { ?>selected<?php } ?> value="4">4</option>
							               	<option  <?php if ($post->number_of_guest == 5) { ?>selected<?php } ?> value="5">5</option>
						           		</select>									
									</div>
				            		</div>
				              </div>       
				                  
				                  
				                   <div class="div-table-row">
				            		<div class="div-table-col">  
				               <div class="div-table-cell">First Name</div>
				               </div>
				               <div class="div-table-col1">  
				                <div class="div-table-cell"><input name="first_name" value="<?php echo $post->first_name; ?>"/></div>
				               </div>
				               </div>
				               
				                <div class="div-table-row">
				            		<div class="div-table-col"> 
				               <div class="div-table-cell">Last Name</div>
				               </div>
				               	<div class="div-table-col1"> 
				                <div class="div-table-cell"><input name="last_name" value="<?php echo $post->last_name; ?>"/></div>
				                     </div>
				                     </div>
				              
				               <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Email Address</div>
				          </div>
				          	<div class="div-table-col1">  
				          <div class="div-table-cell"><input name="email" value="<?php echo $post->email; ?>" readonly/></div>
				          </div>
				          </div>
				          
				             <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Street Address</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="address_line_1" value="<?php echo $post->address_line_1; ?>" /></div>
				          </div>
				          </div>
				             <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">2nd Street Address</div>
				           </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="address_line_2" value="<?php echo $post->address_line_2; ?>" /></div>
				           </div>
				          </div>
				          
				          
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">City</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><input name="city" value="<?php echo $post->city; ?>" /></div>
				          </div>
				          </div>
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">State</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell">
								<select name="state" size="1">
								 <option  <?php if ($post->state == 'AL') { ?>selected<?php } ?>  value="AL">Alabama</option>
								 <option <?php if ($post->state == 'AK') { ?>selected<?php } ?> value="AK">Alaska</option>
								 <option <?php if ($post->state == 'AZ') { ?>selected<?php } ?> value="AZ">Arizona</option>
								 <option <?php if ($post->state == 'AR') { ?>selected<?php } ?> value="AR">Arkansas</option>
								 <option <?php if ($post->state == 'CA') { ?>selected<?php } ?> value="CA">California</option>
								 <option <?php if ($post->state == 'CO') { ?>selected<?php } ?> value="CO">Colorado</option>
								 <option <?php if ($post->state == 'CT') { ?>selected<?php } ?> value="CT">Connecticut</option>
								 <option <?php if ($post->state == 'DE') { ?>selected<?php } ?> value="DE">Delaware</option>
								 <option <?php if ($post->state == 'DC') { ?>selected<?php } ?> value="DC">Dist of Columbia</option>
								 <option <?php if ($post->state == 'FL') { ?>selected<?php } ?> value="FL">Florida</option>
								 <option <?php if ($post->state == 'GA') { ?>selected<?php } ?> value="GA">Georgia</option>
								 <option <?php if ($post->state == 'HI') { ?>selected<?php } ?> value="HI">Hawaii</option>
								 <option <?php if ($post->state == 'ID') { ?>selected<?php } ?> value="ID">Idaho</option>
								 <option <?php if ($post->state == 'IL') { ?>selected<?php } ?> value="IL">Illinois</option>
								 <option <?php if ($post->state == 'IN') { ?>selected<?php } ?> value="IN">Indiana</option>
								 <option <?php if ($post->state == 'IA') { ?>selected<?php } ?> value="IA">Iowa</option>
								 <option <?php if ($post->state == 'KS') { ?>selected<?php } ?> value="KS">Kansas</option>
								 <option <?php if ($post->state == 'KY') { ?>selected<?php } ?> value="KY">Kentucky</option>
								 <option <?php if ($post->state == 'LA') { ?>selected<?php } ?> value="LA">Louisiana</option>
								 <option <?php if ($post->state == 'ME') { ?>selected<?php } ?> value="ME">Maine</option>
								 <option <?php if ($post->state == 'MD') { ?>selected<?php } ?> value="MD">Maryland</option>
								 <option <?php if ($post->state == 'MA') { ?>selected<?php } ?> value="MA">Massachusetts</option>
								 <option <?php if ($post->state == 'MI') { ?>selected<?php } ?> value="MI">Michigan</option>
								 <option <?php if ($post->state == 'MN') { ?>selected<?php } ?> value="MN">Minnesota</option>
								 <option <?php if ($post->state == 'MS') { ?>selected<?php } ?> value="MS">Mississippi</option>
								 <option <?php if ($post->state == 'MO') { ?>selected<?php } ?> value="MO">Missouri</option>
								 <option <?php if ($post->state == 'MT') { ?>selected<?php } ?> value="MT">Montana</option>
								 <option <?php if ($post->state == 'NE') { ?>selected<?php } ?> value="NE">Nebraska</option>
								 <option <?php if ($post->state == 'NV') { ?>selected<?php } ?> value="NV">Nevada</option>
								 <option <?php if ($post->state == 'NH') { ?>selected<?php } ?> value="NH">New Hampshire</option>
								 <option <?php if ($post->state == 'NJ') { ?>selected<?php } ?> value="NJ">New Jersey</option>
								 <option <?php if ($post->state == 'NM') { ?>selected<?php } ?> value="NM">New Mexico</option>
								 <option <?php if ($post->state == 'NY') { ?>selected<?php } ?> value="NY">New York</option>
								 <option <?php if ($post->state == 'NC') { ?>selected<?php } ?> value="NC">North Carolina</option>
								 <option <?php if ($post->state == 'ND') { ?>selected<?php } ?> value="ND">North Dakota</option>
								 <option <?php if ($post->state == 'OH') { ?>selected<?php } ?> value="OH">Ohio</option>
								 <option <?php if ($post->state == 'OK') { ?>selected<?php } ?> value="OK">Oklahoma</option>
								 <option <?php if ($post->state == 'OR') { ?>selected<?php } ?> value="OR">Oregon</option>
								 <option <?php if ($post->state == 'PA') { ?>selected<?php } ?> value="PA">Pennsylvania</option>
								 <option <?php if ($post->state == 'RI') { ?>selected<?php } ?> value="RI">Rhode Island</option>
								 <option <?php if ($post->state == 'SC') { ?>selected<?php } ?> value="SC">South Carolina</option>
								 <option <?php if ($post->state == 'SD') { ?>selected<?php } ?> value="SD">South Dakota</option>
								 <option <?php if ($post->state == 'TN') { ?>selected<?php } ?> value="TN">Tennessee</option>
								 <option <?php if ($post->state == 'TX') { ?>selected<?php } ?> value="TX">Texas</option>
								 <option <?php if ($post->state == 'UT') { ?>selected<?php } ?> value="UT">Utah</option>
								 <option <?php if ($post->state == 'VT') { ?>selected<?php } ?> value="VT">Vermont</option>
								 <option <?php if ($post->state == 'VA') { ?>selected<?php } ?> value="VA">Virginia</option>
								 <option <?php if ($post->state == 'WA') { ?>selected<?php } ?> value="WA">Washington</option>
								 <option <?php if ($post->state == 'WV') { ?>selected<?php } ?> value="WV">West Virginia</option>
								 <option <?php if ($post->state == 'WI') { ?>selected<?php } ?> value="WI">Wisconsin</option>
								 <option <?php if ($post->state == 'WY') { ?>selected<?php } ?> value="WY">Wyoming</option>
								</select>
								
								</div>
				          </div>
				          </div>
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">ZIP</div>
				           </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><input name="zip" value="<?php echo $post->zip; ?>" /></div>   
				           </div>
				          </div>
				          
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">Contact Number</div>
				          </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><input name="phone_number" id="txtPhoneNumber" value="<?php echo $post->phone_number; ?>" /></div>
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
<?php echo $this->partial('partials/footer'); ?>

</body>
</html>

