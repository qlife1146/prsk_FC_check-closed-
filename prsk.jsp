<!--
function img_load() {
	for (var i = 1; i < 301 ; i++) {
		var iSet = ''
		if (i < 10) {
			iSet = '00' + i;
		} else if (i < 100) {
			iSet = '0' + i;
		} else {
			iSet = i;
		}
		try {
			document.write("<img class='0' id="+i+" src='https://minio.dnaroma.eu/sekai-assets/music/jacket/jacket_s_" + iSet + "_rip/jacket_s_" + iSet +".webp' style='width:10%' onclick='changeStyle(" + i + ")'>");
			console.log(document.getElementById(i));
		} catch(e) {
			console.log(e);
		} finally {
			
		}
	} 
}

function img_load() {
	for (var i = 1; i < 300 ; i++) {
		 var iSet = ''
		 if (i < 10) {
				iSet = '00' + i;
		 } else if (i < 100) {
				iSet = '0' + i;
		 } else {
				iSet = i;
		 }
		 var data = `https://minio.dnaroma.eu/sekai-assets/music/jacket/jacket_s_${iSet}_rip/jacket_s_${iSet}.webp`

		 var im = new Image(data);
		 // document.write("<img class='0' id="+i+" src='https://minio.dnaroma.eu/sekai-assets/music/jacket/jacket_s_" + iSet + "_rip/jacket_s_" + iSet +".webp' style='width:10%' onclick='changeStyle(" + i + ")'>");
		 document.write(`<img class='0' id=${i} onerror="this.style.display='none'" src='https://minio.dnaroma.eu/sekai-assets/music/jacket/jacket_s_${iSet}_rip/jacket_s_${iSet}.webp' style='width:10%' onclick='changeStyle(${i})'>`);

	} 
}
-->


<!--
	function inStorage(music_length) {
		var checkArray = new Array();
		checkArray.length = music_length;
		console.log(checkArray);
	}
	
	function checkStorage(i) {
		var element = document.getElementById(i);
		var className = element.className;
		if (className == 0) {
			
		}
	}
-->
function changeStyle(i) {
	var element = document.getElementById(i);
	var opa = element.className;
	
	if (opa == 0) {
		element.style.opacity = 0.2;
		element.className = 1;
	} else {
		element.style.opacity = 1.0;
		element.className = 0;
	}
}

function upload() {
	var iSet = '';
	for(var i = 1; i < 301; i++) {
		 if (i < 10) {
				iSet = '00' + i;
		 } else if (i < 100) {
				iSet = '0' + i;
		 } else {
				iSet = i;
		 }
		document.write("<img class='0' id="+i+" src='./img/" + iSet +".webp' style='width:10%' onclick='changeStyle(" + i + ")'>");
		console.log(iSet)
		console.log(i)
	}
}