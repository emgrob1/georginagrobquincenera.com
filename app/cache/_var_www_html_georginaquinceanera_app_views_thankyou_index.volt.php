
<!DOCTYPE html>
<html>
<?php echo $this->partial('partials/header'); ?>

<body>
  <div class="body clearfix">

  <div class="div-table">

<h2>Thank You For Your RSVP</h2>

<div class="body clearfix">

  <div class="div-table">

 <div class="headRow">
             	
                <div class="div-table-cell" align="center"><div class="text_color"><font size="8">Review RSVP</font></div></div>
                
             </div> 
           <form method = "post" action="thankyou/submit">  
              <div class="div-table">
           
             <div class="div-table-row"> 
        
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
				               <div class="div-table-cell"><text id="attendingRSPV" name="attending" value = ""><?php if ($post->attending == 1) { ?>Yes<?php } ?><?php if ($post->attending == 0) { ?>No<?php } ?></text>			              
				              </div>
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
				                     
									<text><?php echo $post->number_of_guest; ?></text>								
									</div>
				            		</div>
				              </div>       
				                  
				                  
				                   <div class="div-table-row">
				            		<div class="div-table-col">  
				               <div class="div-table-cell">First Name</div>
				               </div>
				               <div class="div-table-col1">  
				                <div class="div-table-cell"><text name="first_name" value=""/><?php echo $post->first_name; ?></div>
				               </div>
				               </div>
				               
				                <div class="div-table-row">
				            		<div class="div-table-col"> 
				               <div class="div-table-cell">Last Name</div>
				               </div>
				               	<div class="div-table-col1"> 
				                <div class="div-table-cell"><text name="last_name" value=""/><?php echo $post->last_name; ?></div>
				                     </div>
				                     </div>
				              
				               <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Email Address</div>
				          </div>
				          	<div class="div-table-col1">  
				          <div class="div-table-cell"><text name="email" value="" readonly/><?php echo $post->email; ?></div>
				          </div>
				          </div>
				          
				             <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Street Address</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><text name="address_line_1" value="" /><?php echo $post->address_line_1; ?></div>
				          </div>
				          </div>
				             <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">2nd Street Address</div>
				           </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><text name="address_line_2" value="" /><?php echo $post->address_line_2; ?></div>
				           </div>
				          </div>
				          
				          
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">City</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><text name="city" value="" /><?php echo $post->city; ?></div>
				          </div>
				          </div>
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">State</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell">
								<text name="state" size="1">
								 <?php if ($post->state == 'AL') { ?>Alabama<?php } ?>
								 <?php if ($post->state == 'AK') { ?>Alabama<?php } ?> 
								  <?php if ($post->state == 'AZ') { ?>Arizona<?php } ?> 
								  <?php if ($post->state == 'AR') { ?>Arkansas<?php } ?> 
								  <?php if ($post->state == 'CA') { ?>California<?php } ?> 
								  <?php if ($post->state == 'CO') { ?>Colorado<?php } ?> 
								  <?php if ($post->state == 'CT') { ?>Connecticut<?php } ?> 
								  <?php if ($post->state == 'DE') { ?>Delaware<?php } ?> 
								  <?php if ($post->state == 'DC') { ?>Dist of Columbia<?php } ?> 
								  <?php if ($post->state == 'FL') { ?>Florida<?php } ?> 
								  <?php if ($post->state == 'GA') { ?>Georgia<?php } ?> 
								  <?php if ($post->state == 'HI') { ?>Hawaii<?php } ?> 
								  <?php if ($post->state == 'ID') { ?>Idaho<?php } ?> 
								  <?php if ($post->state == 'IL') { ?>Illinois<?php } ?> 
								  <?php if ($post->state == 'IN') { ?>Indiana<?php } ?> 
								  <?php if ($post->state == 'IA') { ?>Iowa<?php } ?> 
								  <?php if ($post->state == 'KS') { ?>Kansas<?php } ?> 
								  <?php if ($post->state == 'KY') { ?>Kentucky<?php } ?>
								  <?php if ($post->state == 'LA') { ?>Louisiana<?php } ?> 
								  <?php if ($post->state == 'ME') { ?>Maine<?php } ?> 
								  <?php if ($post->state == 'MD') { ?>Maryland<?php } ?> 
								  <?php if ($post->state == 'MA') { ?>Massachusetts<?php } ?> 
								  <?php if ($post->state == 'MI') { ?>Michigan<?php } ?> 
								  <?php if ($post->state == 'MN') { ?>Minnesota<?php } ?> 
								  <?php if ($post->state == 'MS') { ?>Mississippi<?php } ?> 
								  <?php if ($post->state == 'MO') { ?>Missouri<?php } ?> 
								  <?php if ($post->state == 'MT') { ?>Montana<?php } ?> 
								  <?php if ($post->state == 'NE') { ?>Nebraska<?php } ?> 
								  <?php if ($post->state == 'NV') { ?>Nevada<?php } ?> 
								  <?php if ($post->state == 'NH') { ?>New Hampshire<?php } ?>  
								  <?php if ($post->state == 'NJ') { ?>New Jersey<?php } ?>  
								  <?php if ($post->state == 'NM') { ?>New Mexico<?php } ?>  
								  <?php if ($post->state == 'NY') { ?>New York<?php } ?>  
								  <?php if ($post->state == 'NC') { ?>North Carolina<?php } ?>  
								  <?php if ($post->state == 'ND') { ?>North Dakota<?php } ?>  
								  <?php if ($post->state == 'OH') { ?>Ohio<?php } ?> 
								  <?php if ($post->state == 'OK') { ?>Oklahoma<?php } ?> 
								  <?php if ($post->state == 'OR') { ?>Oregon<?php } ?> 
								  <?php if ($post->state == 'PA') { ?>Pennsylvania<?php } ?> 
								  <?php if ($post->state == 'RI') { ?>Rhode Island<?php } ?>  
								  <?php if ($post->state == 'SC') { ?>South Carolina<?php } ?>  
								  <?php if ($post->state == 'SD') { ?>South Dakota<?php } ?>  
								  <?php if ($post->state == 'TN') { ?>Tennessee<?php } ?> 
								  <?php if ($post->state == 'TX') { ?>Texas<?php } ?> 
								  <?php if ($post->state == 'UT') { ?>Utah<?php } ?> 
								  <?php if ($post->state == 'VT') { ?>Vermont<?php } ?> 
								  <?php if ($post->state == 'VA') { ?>Virginia<?php } ?> 
								  <?php if ($post->state == 'WA') { ?>Washington<?php } ?> 
								  <?php if ($post->state == 'WV') { ?>West Virginia<?php } ?>  
								  <?php if ($post->state == 'WI') { ?>Wisconsin<?php } ?> 
								  <?php if ($post->state == 'WY') { ?>Wyoming<?php } ?> 
								</text>
								
								</div>
				          </div>
				          </div>
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">ZIP</div>
				           </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><text name="zip" value="" /><?php echo $post->zip; ?></div>   
				           </div>
				          </div>
				          
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">Contact Number</div>
				          </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><text name="phone_number" value="" /><?php echo $post->phone_number; ?></div>
				          </div>
				          </div>
				              
      </div>
       </div>
				
				</div>
	</div>
             
				 <div class="div-table-row">         
				<input class="push_button" type="submit" value="Edit RSVP" />
				</div>
</form>
		</div>
		
	
		
	</div>

</div>
</div>
<div class="spacer">
</div>
<?php echo $this->partial('partials/footer'); ?>
</body>
</html>