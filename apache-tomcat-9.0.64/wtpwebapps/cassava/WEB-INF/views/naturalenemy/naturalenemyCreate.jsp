<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.close {
	display: none;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

::selection {
	color: #fff;
	background: #6990F2;
}

.wrapper {
	width: 430px;
	background: #fff;
	border-radius: 5px;
	padding: 30px;
	box-shadow: 7px 7px 12px rgba(0, 0, 0, 0.05);
}

.wrapper header {
	color: #6990F2;
	font-size: 27px;
	font-weight: 600;
	text-align: center;
}

.wrapper form {
	height: 167px;
	display: flex;
	cursor: pointer;
	margin: 30px 0;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	border-radius: 5px;
	border: 2px dashed #6990F2;
}

form :where(i, p) {
	color: #6990F2;
}

form i {
	font-size: 50px;
}

form p {
	margin-top: 15px;
	font-size: 16px;
}

section .row {
	margin-bottom: 10px;
	background: #E9F0FF;
	list-style: none;
	padding: 15px 20px;
	border-radius: 5px;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

section .row i {
	color: #6990F2;
	font-size: 30px;
}

section .details span {
	font-size: 14px;
}

.progress-area .row .content {
	width: 100%;
	margin-left: 15px;
}

.progress-area .details {
	display: flex;
	align-items: center;
	margin-bottom: 7px;
	justify-content: space-between;
}

.progress-area .content .progress-bar {
	height: 6px;
	width: 100%;
	margin-bottom: 4px;
	background: #fff;
	border-radius: 30px;
}

.content .progress-bar .progress {
	height: 100%;
	width: 0%;
	background: #6990F2;
	border-radius: inherit;
}

.uploaded-area {
	max-height: 232px;
	overflow-y: scroll;
}

.uploaded-area.onprogress {
	max-height: 150px;
}

.uploaded-area::-webkit-scrollbar {
	width: 0px;
}

.uploaded-area .row .content {
	display: flex;
	align-items: center;
}

.uploaded-area .row .details {
	display: flex;
	margin-left: 15px;
	flex-direction: column;
}

.uploaded-area .row .details .size {
	color: #404040;
	font-size: 11px;
}

.uploaded-area i.fa-check {
	font-size: 16px;
}
</style>

<jsp:include page="../layouts/mainLayoutHead.jsp" />
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/image-uploader.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,700|Montserrat:300,400,500,600,700|Source+Code+Pro&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
.inputerror {
	border: 0;
	color: red;
	background-color: white;
	width:500px;
}
</style>
</head>


<body>
	<jsp:include page="../layouts/mainLayoutBodyHeader.jsp" />

	<!--**********************************
	            Content body start
	***********************************-->
	<div class="content-body">
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">ศัตรูธรรมชาติ > เพิ่มข้อมูล</h4>
							<div class="form-validation">
								<form class="form-valide" id="targetOfsurveyData"
									modelAttribute="targetOfSurvey" enctype="multipart/form-data">

									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="name">ชื่อ<span
											class="text-danger">*</span>
										</label>

										<div class="col-lg-6">
											<input type="text" class="form-control" name="name"
												placeholder="" required>
											<input class="inputerror" id="name" cssClass="error" disabled />
											<div id="duplicatedName" class="text-danger"></div>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="commonName">ชื่อสามัญ<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" 
												name="naturalenemy.commonName" placeholder="" required>
											<input class="inputerror" id="commonName" cssClass="error" disabled />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="scientificName">ชื่อวิทยาศาสตร์<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" 
												name=naturalenemy.scientificName placeholder="" required>
											<input class="inputerror" id="scientificName" cssClass="error" disabled />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="type">ชนิด<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
										
											<select name="naturalenemy.type" id="type" class="form-control" required>											
												<c:forEach items="${naturalEnemiesType}" var="naturalEnemiesType">
													<option value="${naturalEnemiesType}">${naturalEnemiesType}</option>
												</c:forEach>
											</select>										
										

										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="controlMethod">การควบคุม
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" 
												name="naturalenemy.controlMethod" placeholder="" required>
											<input class="inputerror" id="controlMethod" cssClass="error" disabled />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="releaseRate">อัตราการปล่อย
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" 
												name="naturalenemy.releaseRate" placeholder="" required>
											<input class="inputerror" id="releaseRate" cssClass="error" disabled />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-lg-4 col-form-label" for="source">แหล่งที่มา<span
											class="text-danger">*</span>
										</label>
										<div class="col-lg-6">
											<input type="text" class="form-control" 
												name="naturalenemy.source" placeholder="" required>
											<input class="inputerror" id="source" cssClass="error" disabled />
										</div>
									</div>

								</form>

								<form class="form-valide" id="image_data"
									enctype="multipart/form-data">
									<span id="result"></span>
									<div class="form-group row">
										<!--<label class="col-lg-4 col-form-label" for="val-username">เพิ่มภาพ<span
											class="text-danger">*</span>
										</label>-->

										<div class="col-lg-6">
											<input type="file" class="form-control" id="nmfiles"
												name="files" placeholder="" style="display: none">
										</div>

									</div>

									<div class="input-field">
										<label class="active">เพิ่มภาพ</label>
										<div id="input-images-2" class="input-images-2"
											style="padding-top: .5rem;"></div>
									</div>

									<div class="form-group row">
										<div class="col-lg-8 ml-auto">
											<a href="${pageContext.request.contextPath }/naturalenemy/"
												class="btn btn-light" role="button">กลับ</a>
											<!-- <input
											type="submit" class="btn btn-primary" role="button"
											value="บันทึก"> -->
											<button id="uploadBtn" class="btn btn-primary">บันทึก</button>

										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




		<div class="modal fade" id="myModal" role="dialog"
			data-backdrop="static" data-keyboard="false">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<!--  <h4 class="modal-title">Modal Header</h4> -->
					</div>
					<div class="modal-body" id="status">
						<section class="progress-area"></section>
						<section class="uploaded-area"></section>
					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>-->
				</div>

			</div>
		</div>
	</div>
	<!--**********************************
	     Content body end
	***********************************-->
	<jsp:include page="../layouts/mainLayoutBodyFooter.jsp" />

	<!-- Custom Script -->


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/image-uploader.min.js"></script>

	<script>

const progressArea = document.querySelector(".progress-area"),
uploadedArea = document.querySelector(".uploaded-area");

    $(function () {

    	var isChange = false ;
    	
    	
    	  $("#uploadBtn").click(function() {
    		 
	//		  alert( $('#myModal'));
    //		   $('#myModal').modal('show');
    		   var formData = new FormData($('#targetOfsurveyData')[0]);
    		   $("#name").val("");
    		   $("#commonName").val("");
    		   $("#scientificName").val("");
    		   $("#controlMethod").val("");
    		   $("#releaseRate").val("");
    		   $("#source").val("");
    		  
    		   $.ajax({
											url : "${pageContext.request.contextPath}/naturalenemy/check",
											type : 'POST',
											data : formData,
											dataType : 'json',
											success : function(response) {

											
    		   
    		   $.ajax({
   	            url: "${pageContext.request.contextPath }/targetofsurvey/ajax",
   	            type: 'POST',
   	            data: formData,
   	         	dataType : 'json',
   	            success: function(response) {
   	            		//alert(JSON.stringify(response));
   	            		//const respJSON = JSON.stringify(response) ;
   	   
   	            		const id = response["body"];
   						
   						//alert(myObj);
   						
   						//var id = myObj;
   					
   	            		//$('#result').html(myObj);
   	            		
   	            		let files = $("#nmfiles")[0].files ;
   	            		
   	            		if(files.length == 0){
   	            			window.location.href = "${pageContext.request.contextPath }/naturalenemy/";
   	            		}
   	            		//alert(files[0].name);
   	            		
   	            		$('#myModal').modal('show');
   	            		
   	            		for(var i = 0 ; i < files.length ; i++){
    	            	var uploadFormData = new FormData();
    	            	//alert($('#targetId').val());
    	            	uploadFormData.append('targetId',id);
    	            	uploadFormData.append('file', files[i]);
    	            	
    	            	let name = files[i].name ;
   	      		  		$.ajax({
   	     	            		url: "${pageContext.request.contextPath}/imgnaturalenemy/",
   	     	            		type: 'POST',
   	     	            		data: uploadFormData,
   	     	            		
		  	      	            xhr: function() {
		  	      							var xhr = new window.XMLHttpRequest();
		  	      							xhr.upload.addEventListener("progress", function(evt) {
		   	     								
		  	      	                        let fileLoaded = Math.floor((evt.loaded / evt.total) * 100);  //getting percentage of loaded file size
		   	  								
		  	   								let fileTotal = Math.floor(evt.total / 1000); //gettting total file size in KB from bytes
		  	   								let fileSize;
		  	   								// if file size is less than 1024 then add only KB else convert this KB into MB
		  	   								(fileTotal < 1024) ? fileSize = fileTotal + " KB" : fileSize = (evt.loaded / (1024*1024)).toFixed(2) + " MB";
		  	   								//let fileInput = document.querySelector('#f');
		  	   								//alert($("#nmfiles")[0].files.length);
		  	   								let progressHTML = `<li class="row">
		  	   													  <i class="fas fa-file-alt"></i>
		  	   													  <div class="content">
		  	   														<div class="details">
		  	   													    <span class="name">name • Uploading</span>
		  	   														  <span class="percent">`;
		  	   								progressHTML +=		        fileLoaded ;
		  	   								progressHTML +=`		 %</span>
		  	   														</div>
		  	   														<div class="progress-bar">
		  	   														  <div class="progress" style="width: ` ;
		  	   								progressHTML +=			fileLoaded ;
		  	   								progressHTML +=	        `%"> </div>
		  	   														</div>
		  	   													  </div>
		  	   													</li>`;
		   	  									
		  	   								// uploadedArea.innerHTML = ""; //uncomment this line if you don't want to show upload history
		   	  							
		  	   								uploadedArea.classList.add("onprogress");
		  	   								progressArea.innerHTML = progressHTML;
		   	  								
		  	   								if(evt.loaded == evt.total){
		   	  									
		  	   								  progressArea.innerHTML = "";
		  	   								  let uploadedHTML = `<li class="row">
		  	   														<div class="content upload">
		  	   														  <i class="fas fa-file-alt"></i>
		  	   														  <div class="details">
		  	   													        <span class="name"> ` ;
		  	   									  uploadedHTML +=	      name  ;
		  	   								      uploadedHTML +=          `• Uploaed</span>
		  	   															<span class="size">`;
		  	   									  uploadedHTML +=        fileSize ;
		  	   									  uploadedHTML +=        `</span>
		  	   														  </div>
		  	   														</div>
		  	   														<i class="fas fa-check"></i>
		  	   													  </li>`;
		  	   								  uploadedArea.classList.remove("onprogress");
		  	   								  // uploadedArea.innerHTML = uploadedHTML; //uncomment this line if you don't want to show upload history
		  	   								  uploadedArea.insertAdjacentHTML("afterbegin", uploadedHTML);
		
		  	   								}
		  	      	                }, false);
		  	      	                return xhr;
		  	      	            },
   	     	            		success: function(response) {
   	     	            	
   	     	            		//alert();
   	     	            	setTimeout(function(){
   	     	            		$("#myModal").modal("hide"); 
   	     	            		window.location.href = "${pageContext.request.contextPath }/naturalenemy/";
   	     	            	}, 2000);//
   	  					
   	     	            		},
   	  							error : function(response) {
   	  							alert(response);	
   	  									return false;
   	  							},
   	     	            		cache: false,
   	     	            		contentType: false,
   	     	            		processData: false
   	  							});			
   	            		}
   	            },
				error : function(response) {
					
					//alert( JSON.stringify(response));
					const respJSON = response["responseText"] ;
					const myObj = JSON.parse(respJSON);
					
					alert(myObj.msg.toString());
					
					//const respJSON = JSON.stringify(response.responseText.msg.toString());
					//alert(respJSON);
					//alert('error');
					return false;
					//error();
				},
   	            cache: false,
   	            contentType: false,
   	            processData: false
					}
   	        );
   	        return false;
		
			},
			error : function(response) {
				//alert(response["responseText"]);
				const respJSON = response["responseText"];
				//alert(respJSON);
				const myObj = JSON
						.parse(respJSON);

				for ( var key in myObj.body) {
					//if (p.hasOwnProperty(key)) {
					//alert(key+ " "+ $('#'+ key).val());
					$('#' + key)
							.val(
									myObj.body[key]);
					//}
				}

				return false;
			},
			cache : false,
			contentType : false,
			processData : false
		});
		return false;
			 });
    		  
//     	       var formData = new FormData($('#data')[0]);
//     	       console.log(formData);
//     	        $.ajax({
//     	            url: "${pageContext.request.contextPath }/naturalenemy/naturalenemySave",
//     	            type: 'POST',
//     	            data: formData,
//     	            xhr: function() {
    	            	
    	             
//     	                var xhr = new window.XMLHttpRequest();
//     	                xhr.upload.addEventListener("progress", function(evt) {
//     	                    if (evt.lengthComputable) {
//     	                        var percentComplete = evt.loaded / evt.total;
//     	                        console.log(percentComplete);
//     						    //  $('#status').html('<b> Uploading -> ' + (Math.round(percentComplete * 100)) + '% </b>');
//     	                       // alert($("#data"));
//     	                    }
//     	                }, false);
//     	                return xhr;
//     	            },
//     	            success: function(data) {
//     	            	window.location.href = "${pageContext.request.contextPath }/naturalenemy/naturalenemyIndex";
//     	              //  $("#status").html('UPLOADED!!');
//     	            },
//     	            cache: false,
//     	            contentType: false,
//     	            processData: false
//     	        });
//     	        return false;
    	  

    	$('.input-images-2').bind('DOMNodeInserted DOMNodeRemoved', function(event) {
    		if (event.type == 'DOMNodeInserted' && !isChange) {
    			isChange = true ;
    			let list = new DataTransfer();
    			let fileInput = document.querySelector('#f');
    			//fileList = fileInput.files ;
    			
    			for (var i = 0; i < fileInput.files.length; i++)
    			 {
    				
    				 list.items.add(fileInput.files[i]);
    				 //alert(list.files[i].name);
    			
    			 }
    			 //alert(fileList.length);
    			 //if(list.files.length < $('input[name^=pho]')[0].files.length)
    				 for (var i = 0; i < $('input[name^=pho]')[0].files.length; i++)
    				 {
    				   list.items.add($('input[name^=pho]')[0].files[i]);
    				 }

    			 //alert(list.files.length);
    			
    			 fileInput.prop('files', list.files);
    			 //fileInput.files =$('input[name^=pho]')[0].files ;
    			// fileInput.files = new FileListItems(list.files) ;
    		} else  {
    			//isChange = true ;
    			let fileInput = document.querySelector('#nmfiles');
    			fileInput.files =$('input[name^=pho]')[0].files ;
    			//alert('Content removed! Current content:' + '\n\n' + this.innerHTML);
    		}
    	});
           
    	
    	$( ".input-images-2" ).mouseover(function() {
    		if(isChange){
    			let fileInput = document.querySelector('#nmfiles');
    			fileInput.files =$('input[name^=pho]')[0].files ;
    		}
      		isChange = false ;
      		
    	});
    	

        let preloaded = [
            //{id: 1, src: 'https://picsum.photos/500/500?random=1'},
            //{id: 2, src: 'https://picsum.photos/500/500?random=2'},
            //{id: 3, src: 'https://picsum.photos/500/500?random=3'},
            //{id: 4, src: 'https://picsum.photos/500/500?random=4'},
            //{id: 5, src: 'https://picsum.photos/500/500?random=5'},
            //{id: 6, src: 'https://picsum.photos/500/500?random=6'},
        ];

        $('.input-images-2').imageUploader({
            preloaded: preloaded,
            imagesInputName: 'photos',
            preloadedInputName: 'old',
            maxSize: 10 * 1024 * 1024,
            maxFiles: 10
        });
        


        // Input and label handler
        $('input').on('focus', function () {
            $(this).parent().find('label').addClass('active')
        }).on('blur', function () {
            if ($(this).val() == '') {
                $(this).parent().find('label').removeClass('active');
            }
        });

        // Sticky menu
        let $nav = $('nav'),
            $header = $('header'),
            offset = 4 * parseFloat($('body').css('font-size')),
            scrollTop = $(this).scrollTop();

        // Initial verification
        setNav();

        // Bind scroll
        $(window).on('scroll', function () {
            scrollTop = $(this).scrollTop();
            // Update nav
            setNav();
        });

        function setNav() {
            if (scrollTop > $header.outerHeight()) {
                $nav.css({position: 'fixed', 'top': offset});
            } else {
                $nav.css({position: '', 'top': ''});
            }
        }
    });
</script>
</body>
</html>