/**
 * 
 */
$( document ).ready(function() {
	$('#chatbot-icon').click(function(){
		$('#chat-window-container').removeClass("d-none");
		$(this).addClass("d-none");
		
	});
	$('#minimize-btn').click(function(){
		$('#chat-window-container').addClass("d-none");
		$('#chatbot-icon').removeClass("d-none");
		
	});
	
	$('#want_yes').click(function(){
		$( "#want_yes" ).attr("disabled", true);
		$( "#want_no" ).attr("disabled", true);
		 $("#r_want_yes").prop("checked", true);
		$('<div class="right right-bubble"> Yes i want to applly for moratorium</div>').prependTo("#chat-body");
		$('<div>').prop({ id:'new1'}).prependTo('#chat-body');
		$('#new1').addClass("left left-bubble");
		$('#new1').append('<p>Enter the  Reason for applying moratorium below and then click done button</p>').
		append($('<input>').prop({ id:'reason', name:'reason' ,type:'text' })).append($('<br><br>')).append($('<input>').prop({ id:'done' ,type:'button', value:'Done' }));
		$('#reason').addClass("reason");
		$('#done').addClass("btn btn-sm bot-btn");	  
		$('#done').click(function(){
			var r=document.getElementById("reason").value;
			$('<div class="right right-bubble"> Reason is <br>'+r+'</div>').prependTo("#chat-body");
			$('<div>').prop({ id:'new2'}).prependTo('#chat-body');
			$('#new2').addClass("left left-bubble");
			$('#new2').append('<p>Select the loans that your want to apply moratorium policy and then click on done button</p>');
			for (var y of loans){
			$('#new2').append($('<input>').prop({ id:y, name:"selected_loans" ,type:'checkbox', value:y })).append(y+'<br>');
			  }
			$('#new2').append('<br>').append($('<input>').prop({ id:'done1' ,type:'button', value:'Done' }));
			$('#done1').addClass("btn btn-sm bot-btn");
			$('#done1').click(function(){
				var values = [];
	            $.each($("input[name='selected_loans']:checked"), function(){
	                values.push($(this).val());
	            });
	            $('<div class="right right-bubble">'+values.join(", ")+ '</div>').prependTo("#chat-body");
	            $('<div>').prop({ id:'new3'}).prependTo('#chat-body');
				$('#new3').addClass("left left-bubble");
				$('#new3').append('<p> Questions for quick review...<br>Answer them<br><br>what is your present economical status compared to previous salary</p>');
				var items=['no salary','0%-25%','25%-50%','50%-75%','75%-100%'];
				for (var y of items){
					$('#new3').append($('<input>').prop({ id:y, name:'salary' ,type:'radio', value:y })).append(y+'<br>');
					  }
				$('input:radio[name="salary"]').change(function(){
					$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
					$('<div>').prop({ id:'new5'}).prependTo('#chat-body');
					$('#new5').addClass("left left-bubble");
					$('#new5').append('<p>Your health condition</p>');
					$('#new5').append($('<input>').prop({ id:'b_healthy' ,type:'button', value:'Healthy' }));
					$('#b_healthy').addClass("btn btn-sm bot-btn");
					$('#new5').append($('<input>').prop({ id:'b_serious' ,type:'button', value:'serious' }));
					$('#b_serious').addClass("btn btn-sm bot-btn");
					$('#new5').append('<br><br>').append($('<input>').prop({ id:'b_effected' ,type:'button', value:'Effected-by-covid-19' }));
					$('#b_effected').addClass("btn btn-sm bot-btn");
					
					$('#b_healthy,#b_effected,#b_serious').on('click',function(){
						$( "#b_healthy" ).attr("disabled", true);
						$( "#b_effected" ).attr("disabled", true);
						$( "#b_serious" ).attr("disabled", true);
						$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
						$("#"+$(this).val()).prop("checked", true);
						$('<div>').prop({ id:'new6'}).prependTo('#chat-body');
						$('#new6').addClass("left left-bubble");
						$('#new6').append('<p>What is your mental health?</p>');
						$('#new6').append($('<input>').prop({ id:'m_healthy' ,type:'button', value:'healthy' }));
						$('#m_healthy').addClass("btn btn-sm bot-btn");
						$('#new6').append($('<input>').prop({ id:'m_stressed' ,type:'button', value:'stressed' }));
						$('#m_stressed').addClass("btn btn-sm bot-btn");
						$('#m_healthy,#m_stressed').on('click',function(){
							$( "#m_healthy" ).attr("disabled", true);
							$( "#m_stressed" ).attr("disabled", true);
							$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
							$("#"+$(this).val()).prop("checked", true);
							$('<div>').prop({ id:'new7'}).prependTo('#chat-body');
							$('#new7').addClass("left left-bubble");
							$('#new7').append('<p>Do you want any extra loan?</p>');
							$('#new7').append($('<input>').prop({ id:'l_yes' ,type:'button', value:'yes' }));
							$('#l_yes').addClass("btn btn-sm bot-btn");
							$('#new7').append($('<input>').prop({ id:'l_no' ,type:'button', value:'no' }));
							$('#l_no').addClass("btn btn-sm bot-btn");
							$('#l_yes,#l_no').on('click',function(){
								$( "#l_yes" ).attr("disabled", true);
								$( "#l_no" ).attr("disabled", true);
								if($(this).val()=='yes'){
									$('<div class="right right-bubble">Yes,I want to another loan.</div>').prependTo("#chat-body");
									$("#extra_yes").prop("checked", true);
								}
								else{
									$('<div class="right right-bubble">No,I dont want to take loan.</div>').prependTo("#chat-body");
									$("#extra_no").prop("checked", true);
								}
			
								$('<div>').prop({ id:'new9'}).prependTo('#chat-body');
								$('#new9').addClass("left left-bubble");
								$('#new9').append('<p>Click on below apply to submit your application orther wise your form will not be submitted.</p>');
								$('#new9').append($('<input>').prop({ id:'apply' ,type:'button', value:'apply' }));
								$('#apply').addClass("btn btn-sm bot-btn");
								$('#apply').click(function(){
									$('<div class="right right-bubble">Yes,apply.</div>').prependTo("#chat-body");
									$('<div>').prop({ id:'new8'}).prependTo('#chat-body');
									$('#new8').addClass("left left-bubble");
									$('#new8').append('<p>Thanks for your feed back.<br> We will let you whether your application is approved or not with in 2 days.<br>Please take care of your self and take all the precuations and be safe</p>');
									document.querySelector("input[type='submit']").click();
								});
								
							});
							
							
							
						});
					});
					
				});//
	            
				
			});
			
			
			
		});
	});
	
	$('#want_no').click(function(){
		$( "#want_yes" ).attr("disabled", true);
		$( "#want_no" ).attr("disabled", true);
		 $("#r_want_no").prop("checked", true);//radio	
		$('<div class="right right-bubble"> No,i dont  want to applly for moratorium</div>').prependTo("#chat-body");
		$('<div>').prop({ id:'new3'}).prependTo('#chat-body');
		$('#new3').addClass("left left-bubble");
		$('#new3').append('<p> Questions for quick review...<br>Answer them<br><br>what is your present economical status compared to previous salary</p>');
		var items=['no salary','0%-25%','25%-50%','50%-75%','75%-100%'];
		for (var y of items){
			$('#new3').append($('<input>').prop({ id:y, name:'salary' ,type:'radio', value:y })).append(y+'<br>');
			  }
		$('input:radio[name="salary"]').change(function(){
			$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
			$('<div>').prop({ id:'new5'}).prependTo('#chat-body');
			$('#new5').addClass("left left-bubble");
			$('#new5').append('<p>Your health condition</p>');
			$('#new5').append($('<input>').prop({ id:'b_healthy' ,type:'button', value:'Healthy' }));
			$('#b_healthy').addClass("btn btn-sm bot-btn");
			$('#new5').append($('<input>').prop({ id:'b_serious' ,type:'button', value:'serious' }));
			$('#b_serious').addClass("btn btn-sm bot-btn");
			$('#new5').append('<br><br>').append($('<input>').prop({ id:'b_effected' ,type:'button', value:'Effected-by-covid-19' }));
			$('#b_effected').addClass("btn btn-sm bot-btn");
			
			$('#b_healthy,#b_effected,#b_serious').on('click',function(){
				$( "#b_healthy" ).attr("disabled", true);
				$( "#b_effected" ).attr("disabled", true);
				$( "#b_serious" ).attr("disabled", true);
				$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
				$("#"+$(this).val()).prop("checked", true);
				$('<div>').prop({ id:'new6'}).prependTo('#chat-body');
				$('#new6').addClass("left left-bubble");
				$('#new6').append('<p>What is your mental health?</p>');
				$('#new6').append($('<input>').prop({ id:'m_healthy' ,type:'button', value:'healthy' }));
				$('#m_healthy').addClass("btn btn-sm bot-btn");
				$('#new6').append($('<input>').prop({ id:'m_stressed' ,type:'button', value:'stressed' }));
				$('#m_stressed').addClass("btn btn-sm bot-btn");
				$('#m_healthy,#m_stressed').on('click',function(){
					$( "#m_healthy" ).attr("disabled", true);
					$( "#m_stressed" ).attr("disabled", true);
					$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
					$("#"+$(this).val()).prop("checked", true);
					$('<div>').prop({ id:'new7'}).prependTo('#chat-body');
					$('#new7').addClass("left left-bubble");
					$('#new7').append('<p>Do you want any extra loan?</p>');
					$('#new7').append($('<input>').prop({ id:'l_yes' ,type:'button', value:'yes' }));
					$('#l_yes').addClass("btn btn-sm bot-btn");
					$('#new7').append($('<input>').prop({ id:'l_no' ,type:'button', value:'no' }));
					$('#l_no').addClass("btn btn-sm bot-btn");
					$('#l_yes,#l_no').on('click',function(){
						$( "#l_yes" ).attr("disabled", true);
						$( "#l_no" ).attr("disabled", true);
						if($(this).val()=='yes'){
							$('<div class="right right-bubble">Yes,I want to another loan.</div>').prependTo("#chat-body");
							$("#extra_yes").prop("checked", true);
						}
						else{
							$('<div class="right right-bubble">No,I dont want to take loan.</div>').prependTo("#chat-body");
							$("#extra_no").prop("checked", true);
						}
	
						$('<div>').prop({ id:'new9'}).prependTo('#chat-body');
						$('#new9').addClass("left left-bubble");
						$('#new9').append('<p>Click on below apply to submit your application orther wise your form will not be submitted.</p>');
						$('#new9').append($('<input>').prop({ id:'apply' ,type:'button', value:'apply' }));
						$('#apply').addClass("btn btn-sm bot-btn");
						$('#apply').click(function(){
							$('<div class="right right-bubble">Yes,apply.</div>').prependTo("#chat-body");
							$('<div>').prop({ id:'new8'}).prependTo('#chat-body');
							$('#new8').addClass("left left-bubble");
							$('#new8').append('<p>Thanks for your feed back.<br> We will let you whether your application is approved or not with in 2 days.<br>Please take care of your self and take all the precuations and be safe</p>');
							document.querySelector("input[type='submit']").click();
						});
						
					});
					
					
					
				});
			});
			
		});
	});
	
	$('#want_yes1').click(function(){
		$( "#want_yes" ).attr("disabled", true);
		$( "#want_no" ).attr("disabled", true);
		 $("#r_want_yes").prop("checked", true);
		$('<div class="right right-bubble"> Yes i want to applly for moratorium</div>').prependTo("#chat-body");
		$('<div>').prop({ id:'new1'}).prependTo('#chat-body');
		$('#new1').addClass("left left-bubble");
		$('#new1').append('<p>Enter the  Reason for applying moratorium below and then click done button</p>').
		append($('<input>').prop({ id:'reason', name:'reason' ,type:'text' })).append($('<br><br>')).append($('<input>').prop({ id:'done' ,type:'button', value:'Done' }));
		$('#reason').addClass("reason");
		$('#done').addClass("btn btn-sm bot-btn");	  
		$('#done').click(function(){
			var r=document.getElementById("reason").value;
			$('<div class="right right-bubble"> Reason is <br>'+r+'</div>').prependTo("#chat-body");
			$('<div>').prop({ id:'new2'}).prependTo('#chat-body');
			$('#new2').addClass("left left-bubble");
			$('#new2').append('<p>Select the loans that your want to apply moratorium policy and then click on done button</p>');
			for (var y of loans){
			$('#new2').append($('<input>').prop({ id:y, name:"selected_loans" ,type:'checkbox', value:y })).append(y+'<br>');
			  }
			$('#new2').append('<br>').append($('<input>').prop({ id:'done1' ,type:'button', value:'Done' }));
			$('#done1').addClass("btn btn-sm bot-btn");
			$('#done1').click(function(){
				var values = [];
	            $.each($("input[name='selected_loans']:checked"), function(){
	                values.push($(this).val());
	            });
	            $('<div class="right right-bubble">'+values.join(", ")+ '</div>').prependTo("#chat-body");
	            $('<div>').prop({ id:'new3'}).prependTo('#chat-body');
				$('#new3').addClass("left left-bubble");
				$('#new3').append('<p> Questions for quick review...<br>Answer them<br><br>what is your present economical status compared to previous salary</p>');
				var items=['no salary','0%-25%','25%-50%','50%-75%','75%-100%'];
				for (var y of items){
					$('#new3').append($('<input>').prop({ id:y, name:'salary' ,type:'radio', value:y })).append(y+'<br>');
					  }
				$('input:radio[name="salary"]').change(function(){
					$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
					$('<div>').prop({ id:'new5'}).prependTo('#chat-body');
					$('#new5').addClass("left left-bubble");
					$('#new5').append('<p>Your health condition</p>');
					$('#new5').append($('<input>').prop({ id:'b_healthy' ,type:'button', value:'Healthy' }));
					$('#b_healthy').addClass("btn btn-sm bot-btn");
					$('#new5').append($('<input>').prop({ id:'b_serious' ,type:'button', value:'serious' }));
					$('#b_serious').addClass("btn btn-sm bot-btn");
					$('#new5').append('<br><br>').append($('<input>').prop({ id:'b_effected' ,type:'button', value:'Effected-by-covid-19' }));
					$('#b_effected').addClass("btn btn-sm bot-btn");
					
					$('#b_healthy,#b_effected,#b_serious').on('click',function(){
						$( "#b_healthy" ).attr("disabled", true);
						$( "#b_effected" ).attr("disabled", true);
						$( "#b_serious" ).attr("disabled", true);
						$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
						$("#"+$(this).val()).prop("checked", true);
						$('<div>').prop({ id:'new6'}).prependTo('#chat-body');
						$('#new6').addClass("left left-bubble");
						$('#new6').append('<p>What is your mental health?</p>');
						$('#new6').append($('<input>').prop({ id:'m_healthy' ,type:'button', value:'healthy' }));
						$('#m_healthy').addClass("btn btn-sm bot-btn");
						$('#new6').append($('<input>').prop({ id:'m_stressed' ,type:'button', value:'stressed' }));
						$('#m_stressed').addClass("btn btn-sm bot-btn");
						$('#m_healthy,#m_stressed').on('click',function(){
							$( "#m_healthy" ).attr("disabled", true);
							$( "#m_stressed" ).attr("disabled", true);
							$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
							$("#"+$(this).val()).prop("checked", true);
							$('<div>').prop({ id:'new7'}).prependTo('#chat-body');
							$('#new7').addClass("left left-bubble");
							$('#new7').append('<p>Do you want any extra loan?</p>');
							$('#new7').append($('<input>').prop({ id:'l_yes' ,type:'button', value:'yes' }));
							$('#l_yes').addClass("btn btn-sm bot-btn");
							$('#new7').append($('<input>').prop({ id:'l_no' ,type:'button', value:'no' }));
							$('#l_no').addClass("btn btn-sm bot-btn");
							$('#l_yes,#l_no').on('click',function(){
								$( "#l_yes" ).attr("disabled", true);
								$( "#l_no" ).attr("disabled", true);
								if($(this).val()=='yes'){
									$('<div class="right right-bubble">Yes,I want to another loan.</div>').prependTo("#chat-body");
									$("#extra_yes").prop("checked", true);
								}
								else{
									$('<div class="right right-bubble">No,I dont want to take loan.</div>').prependTo("#chat-body");
									$("#extra_no").prop("checked", true);
								}
			
								$('<div>').prop({ id:'new9'}).prependTo('#chat-body');
								$('#new9').addClass("left left-bubble");
								$('#new9').append('<p>Click on below apply to submit your application orther wise your form will not be submitted.</p>');
								$('#new9').append($('<input>').prop({ id:'apply' ,type:'button', value:'apply' }));
								$('#apply').addClass("btn btn-sm bot-btn");
								$('#apply').click(function(){
									$('<div class="right right-bubble">Yes,apply.</div>').prependTo("#chat-body");
									$('<div>').prop({ id:'new8'}).prependTo('#chat-body');
									$('#new8').addClass("left left-bubble");
									$('#new8').append('<p>Thanks for your feed back.<br> We will let you whether your application is approved or not with in 2 days.<br>Please take care of your self and take all the precuations and be safe</p>');
									document.querySelector("input[type='submit']").click();
								});
								
							});
							
							
							
						});
					});
					
				});//
	            
				
			});
			
			
			
		});
	});
	
	$('#want_no1').click(function(){
		$( "#want_yes" ).attr("disabled", true);
		$( "#want_no" ).attr("disabled", true);
		 $("#r_want_no").prop("checked", true);//radio	
		$('<div class="right right-bubble"> No,i dont  want to applly for moratorium</div>').prependTo("#chat-body");
		$('<div>').prop({ id:'new3'}).prependTo('#chat-body');
		$('#new3').addClass("left left-bubble");
		$('#new3').append('<p> Questions for quick review...<br>Answer them<br><br>what is your present economical status compared to previous salary</p>');
		var items=['no salary','0%-25%','25%-50%','50%-75%','75%-100%'];
		for (var y of items){
			$('#new3').append($('<input>').prop({ id:y, name:'salary' ,type:'radio', value:y })).append(y+'<br>');
			  }
		$('input:radio[name="salary"]').change(function(){
			$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
			$('<div>').prop({ id:'new5'}).prependTo('#chat-body');
			$('#new5').addClass("left left-bubble");
			$('#new5').append('<p>Your health condition</p>');
			$('#new5').append($('<input>').prop({ id:'b_healthy' ,type:'button', value:'Healthy' }));
			$('#b_healthy').addClass("btn btn-sm bot-btn");
			$('#new5').append($('<input>').prop({ id:'b_serious' ,type:'button', value:'serious' }));
			$('#b_serious').addClass("btn btn-sm bot-btn");
			$('#new5').append('<br><br>').append($('<input>').prop({ id:'b_effected' ,type:'button', value:'Effected-by-covid-19' }));
			$('#b_effected').addClass("btn btn-sm bot-btn");
			
			$('#b_healthy,#b_effected,#b_serious').on('click',function(){
				$( "#b_healthy" ).attr("disabled", true);
				$( "#b_effected" ).attr("disabled", true);
				$( "#b_serious" ).attr("disabled", true);
				$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
				$("#"+$(this).val()).prop("checked", true);
				$('<div>').prop({ id:'new6'}).prependTo('#chat-body');
				$('#new6').addClass("left left-bubble");
				$('#new6').append('<p>What is your mental health?</p>');
				$('#new6').append($('<input>').prop({ id:'m_healthy' ,type:'button', value:'healthy' }));
				$('#m_healthy').addClass("btn btn-sm bot-btn");
				$('#new6').append($('<input>').prop({ id:'m_stressed' ,type:'button', value:'stressed' }));
				$('#m_stressed').addClass("btn btn-sm bot-btn");
				$('#m_healthy,#m_stressed').on('click',function(){
					$( "#m_healthy" ).attr("disabled", true);
					$( "#m_stressed" ).attr("disabled", true);
					$('<div class="right right-bubble">'+$(this).val()+ '</div>').prependTo("#chat-body");
					$("#"+$(this).val()).prop("checked", true);
					$('<div>').prop({ id:'new7'}).prependTo('#chat-body');
					$('#new7').addClass("left left-bubble");
					$('#new7').append('<p>Do you want any extra loan?</p>');
					$('#new7').append($('<input>').prop({ id:'l_yes' ,type:'button', value:'yes' }));
					$('#l_yes').addClass("btn btn-sm bot-btn");
					$('#new7').append($('<input>').prop({ id:'l_no' ,type:'button', value:'no' }));
					$('#l_no').addClass("btn btn-sm bot-btn");
					$('#l_yes,#l_no').on('click',function(){
						$( "#l_yes" ).attr("disabled", true);
						$( "#l_no" ).attr("disabled", true);
						if($(this).val()=='yes'){
							$('<div class="right right-bubble">Yes,I want to another loan.</div>').prependTo("#chat-body");
							$("#extra_yes").prop("checked", true);
						}
						else{
							$('<div class="right right-bubble">No,I dont want to take loan.</div>').prependTo("#chat-body");
							$("#extra_no").prop("checked", true);
						}
	
						$('<div>').prop({ id:'new9'}).prependTo('#chat-body');
						$('#new9').addClass("left left-bubble");
						$('#new9').append('<p>Click on below apply to submit your application orther wise your form will not be submitted.</p>');
						$('#new9').append($('<input>').prop({ id:'apply' ,type:'button', value:'apply' }));
						$('#apply').addClass("btn btn-sm bot-btn");
						$('#apply').click(function(){
							$('<div class="right right-bubble">Yes,apply.</div>').prependTo("#chat-body");
							$('<div>').prop({ id:'new8'}).prependTo('#chat-body');
							$('#new8').addClass("left left-bubble");
							$('#new8').append('<p>Thanks for your feed back.<br> We will let you whether your application is approved or not with in 2 days.<br>Please take care of your self and take all the precuations and be safe</p>');
							document.querySelector("input[type='submit']").click();
						});
						
					});
					
					
					
				});
			});
			
		});
	});
	

	

});