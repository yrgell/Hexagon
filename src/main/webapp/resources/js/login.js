var msg_id ="아이디를 입력하세요1";
var msg_confirmId = "중복확인을 해주세요";
var msg_pwchk ="비밀번호가 일치하지 않습니다";


//중복 확인 체크
function confirmId(){
	//id 값 미입력시
	if(!document.signInForm.guestid.value){
		alert(msg_id);
	document.signInForm.guestid.focus();
	return false;
	}
	var url ="confirmId.gu?guestid="+document.signInForm.guestid.value;
	window.open(url,"confirm","menubar=no ,width=300px, height=200");
	
}

//중복확인창에서 id입력 여부
function confirmIdCheck(){
	if(!document.confirmForm.id.value){
		alert(msg_id);
	document.confirmForm.id.focus();
	return false;
	}
}

//중복확인 성공
function setId(id){
	opener.document.signInForm.guestid.value=id;
	opener.document.signInForm.hiddenId.value=1;
	self.close();
}

function signIncheck(){
	
	var idRegExp=/^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]|.*[0-9]).{6,15}$/;
    if(!idRegExp.test(document.signInForm.guestid.value)){
    	 alert("아이디는 이메일양식에 맞게 작성하세요");
    	 signInForm.guestid.value = "";
    	 signInForm.guestid.focus();
         return false;
    }
    
    var idRegExp=/^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]|.*[0-9]).{6,15}$/;
    if(!idRegExp.test(document.signInForm.pass.value)){
    	 alert("비밀번호는 영문대소문자, 숫자, 특수문자 혼합 사용해서 지어주세요(6~15자리)");
    	 signInForm.pass.value = "";
    	 signInForm.pass.focus();
         return false;
    }
    
    var phoneRegExp=/^[0-9]{10,11}$/;
    if(!phoneRegExp.test(document.signInForm.mobile.value)){
    	 alert("숫자만 입력하세요");
    	 signInForm.mobile.value = "";
    	 signInForm.mobile.focus();
         return false;
    }
	
	if(document.signInForm.pass.value != document.signInForm.passRetype.value){
		alert(msg_pwchk);
		document.signInForm.passRetype.focus();
		document.signInForm.passRetype.value=null;
		return false;
		}
	
	//중복확인  
	if(document.signInForm.hiddenId.value == 0){
		alert(msg_confirmId);
		return false;
		
	}
}


//중복확인창에서 id입력 여부
function confirmIdCheck(){
	if(!document.confirmForm.id.value){
		alert(msg_id);
	document.confirmForm.id.focus();
	return false;
	}
}