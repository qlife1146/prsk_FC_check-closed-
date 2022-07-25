var arr = [];
var save_arr = [];
var def_length = 0;

function upload() {
	var iSet = '';
	for(var i = 1; i < 301; i++) {
		if (i < 10) {
			iSet='00' + i;
		} else if (i < 100) {
			iSet='0' + i;
		} else {
			iSet=i;
		}
		document.write("<img class='0' id="+i+" src='./img/" + iSet +".webp' style='width:10%' onclick='changeStyle(" + i + ")'>");
		arr.push(i);
	}
	def_length = arr.length;
	init_zero();
	readCheck();
}

//배열 안을 전부 0으로 채워버리는 기능
function init_zero() {
	for (var i = 0; i < def_length; i++) {
		save_arr[i] = 0;
	}
}

//onclick 기능. 사진의 반투명 토글 기능
function changeStyle(i) {
	var element = document.getElementById(i);

	//클리어가 아니면 클리어로
	if (opac == 0) {
		element.style.opacity = 0.2;
		element.className = 1;
		save_arr[i] = 1;
	} else { //클리어면 클리어 아닌 걸로
		element.style.opacity = 1.0;
		element.className = 0;
		save_arr[i] = 0;
	}
}

//엑박을 지우기 위한 테스트 기능
function noImage() {
	console.log("imgERROR");
}

//디버그용 콘솔 로그
function debug() {
	var output = localStorage.getItem("save_arr_key");
	console.log(save_arr);
	console.log(output[0]);
	console.log(output[1]);
	console.log(output[2]);
	console.log(output[3]);
	console.log(output[4]);
	console.log(output[5]);
	console.log(output[6]);
	console.log(output[7]);
}

//사용자의 기록 초기화(투명도 전부 off, 배열 전부 0으로)
function init_arr() {
	for (var a = 1; a < def_length; a++) {
		opacity_to_zero(a);
		save_arr[a] = 0;
	}
}

//저장. 로컬 스토리지에 배열 저장.
function save() {
	localStorage.setItem("save_arr_key", save_arr);	
}


//로컬 스토리지의 배열을 읽어서 이전 사용자가 저장한 표기를 다시 불러온다.
function readCheck() {
	var output = localStorage.getItem("save_arr_key");
	for (var a = 2; a < def_length*2; a=a+2) {
		console.log(output[a]);
		if (output[a] == "1") {
			opacity_to_one(a/2);
			console.log(output[a]);
		} else {
			console.log(output[a]);
		}
	}
}

//이하 투명도 토글 기능
function opacity_to_one(i) {
	var element = document.getElementById(i);

	element.style.opacity = 0.2;
	element.className = 1;
}

function opacity_to_zero(i) {
	var element = document.getElementById(i);

	element.style.opacity = 1.0;
	element.className = 0;
}