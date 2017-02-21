<!DOCTYPE html>
<html>
{{ partial('partials/header')}}

<body>
  <div class="body clearfix">

  <div class="div-table">

<h2>Thank You For Your RSVP</h2>

<div class="body clearfix">

  

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
				               <div class="div-table-cell"><text id="attendingRSPV" name="attending" value = "">{% if post.attending == 1 %}Yes{%endif%}{% if post.attending == 0 %}No{%endif%}</text>			              
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
				                     
									<text>{{post.number_of_guest}}</text>								
									</div>
				            		</div>
				              </div>       
				                  
				                  
				                   <div class="div-table-row">
				            		<div class="div-table-col">  
				               <div class="div-table-cell">First Name</div>
				               </div>
				               <div class="div-table-col1">  
				                <div class="div-table-cell"><text name="first_name" value=""/>{{post.first_name}}</div>
				               </div>
				               </div>
				               
				                <div class="div-table-row">
				            		<div class="div-table-col"> 
				               <div class="div-table-cell">Last Name</div>
				               </div>
				               	<div class="div-table-col1"> 
				                <div class="div-table-cell"><text name="last_name" value=""/>{{post.last_name}}</div>
				                     </div>
				                     </div>
				              
				               <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Email Address</div>
				          </div>
				          	<div class="div-table-col1">  
				          <div class="div-table-cell"><text name="email" value="" readonly/>{{post.email}}</div>
				          </div>
				          </div>
				          
				             <div class="div-table-row">
				            		<div class="div-table-col">  
				          <div class="div-table-cell">Street Address</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><text name="address_line_1" value="" />{{post.address_line_1}}</div>
				          </div>
				          </div>
				             <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">2nd Street Address</div>
				           </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><text name="address_line_2" value="" />{{post.address_line_2}}</div>
				           </div>
				          </div>
				          
				          
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">City</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell"><text name="city" value="" />{{post.city}}</div>
				          </div>
				          </div>
				          <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">State</div>
				            </div>
				            <div class="div-table-col1">  
				          <div class="div-table-cell">
								<text name="state" size="1">
								 {%if post.state == 'AL'%}Alabama{%endif%}
								 {%if post.state == 'AK'%}Alabama{%endif%} 
								  {%if post.state == 'AZ'%}Arizona{%endif%} 
								  {%if post.state == 'AR'%}Arkansas{%endif%} 
								  {%if post.state == 'CA'%}California{%endif%} 
								  {%if post.state == 'CO'%}Colorado{%endif%} 
								  {%if post.state == 'CT'%}Connecticut{%endif%} 
								  {%if post.state == 'DE'%}Delaware{%endif%} 
								  {%if post.state == 'DC'%}Dist of Columbia{%endif%} 
								  {%if post.state == 'FL'%}Florida{%endif%} 
								  {%if post.state == 'GA'%}Georgia{%endif%} 
								  {%if post.state == 'HI'%}Hawaii{%endif%} 
								  {%if post.state == 'ID'%}Idaho{%endif%} 
								  {%if post.state == 'IL'%}Illinois{%endif%} 
								  {%if post.state == 'IN'%}Indiana{%endif%} 
								  {%if post.state == 'IA'%}Iowa{%endif%} 
								  {%if post.state == 'KS'%}Kansas{%endif%} 
								  {%if post.state == 'KY'%}Kentucky{%endif%}
								  {%if post.state == 'LA'%}Louisiana{%endif%} 
								  {%if post.state == 'ME'%}Maine{%endif%} 
								  {%if post.state == 'MD'%}Maryland{%endif%} 
								  {%if post.state == 'MA'%}Massachusetts{%endif%} 
								  {%if post.state == 'MI'%}Michigan{%endif%} 
								  {%if post.state == 'MN'%}Minnesota{%endif%} 
								  {%if post.state == 'MS'%}Mississippi{%endif%} 
								  {%if post.state == 'MO'%}Missouri{%endif%} 
								  {%if post.state == 'MT'%}Montana{%endif%} 
								  {%if post.state == 'NE'%}Nebraska{%endif%} 
								  {%if post.state == 'NV'%}Nevada{%endif%} 
								  {%if post.state == 'NH'%}New Hampshire{%endif%}  
								  {%if post.state == 'NJ'%}New Jersey{%endif%}  
								  {%if post.state == 'NM'%}New Mexico{%endif%}  
								  {%if post.state == 'NY'%}New York{%endif%}  
								  {%if post.state == 'NC'%}North Carolina{%endif%}  
								  {%if post.state == 'ND'%}North Dakota{%endif%}  
								  {%if post.state == 'OH'%}Ohio{%endif%} 
								  {%if post.state == 'OK'%}Oklahoma{%endif%} 
								  {%if post.state == 'OR'%}Oregon{%endif%} 
								  {%if post.state == 'PA'%}Pennsylvania{%endif%} 
								  {%if post.state == 'RI'%}Rhode Island{%endif%}  
								  {%if post.state == 'SC'%}South Carolina{%endif%}  
								  {%if post.state == 'SD'%}South Dakota{%endif%}  
								  {%if post.state == 'TN'%}Tennessee{%endif%} 
								  {%if post.state == 'TX'%}Texas{%endif%} 
								  {%if post.state == 'UT'%}Utah{%endif%} 
								  {%if post.state == 'VT'%}Vermont{%endif%} 
								  {%if post.state == 'VA'%}Virginia{%endif%} 
								  {%if post.state == 'WA'%}Washington{%endif%} 
								  {%if post.state == 'WV'%}West Virginia{%endif%}  
								  {%if post.state == 'WI'%}Wisconsin{%endif%} 
								  {%if post.state == 'WY'%}Wyoming{%endif%} 
								</text>
								
								</div>
				          </div>
				          </div>
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">ZIP</div>
				           </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><text name="zip" value="" />{{post.zip}}</div>   
				           </div>
				          </div>
				          
				            <div class="div-table-row">
				            		<div class="div-table-col"> 
				          <div class="div-table-cell">Contact Number</div>
				          </div>
				            <div class="div-table-col1"> 
				          <div class="div-table-cell"><text name="phone_number" value="" />{{post.phone_number}}</div>
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
<div class="spacer">
</div>
{{partial('partials/footer') }}
</body>
</html>