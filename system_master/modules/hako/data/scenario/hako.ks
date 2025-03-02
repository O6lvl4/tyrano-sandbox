
[iscript]

if($.userenv()!="pc"){
	var j_mask = $("<div class='hako_mask_image' style='display:table-cell;text-align:center;position:absolute;width:100%;height:100%;background-color:black;background:rgba(45,45,45, 0.7);'><img style='vertical-align:middle;width:300px;height:300px' src='./data/image/hako_logo.png' /></div>");
	$("body").append(j_mask);
	
	j_mask.on("click",function(){
		j_mask.remove();
		TYRANO.kag.ftag.nextOrder();
	});
	
}else{
	TYRANO.kag.ftag.nextOrder();
}
	
[endscript]

[p]

