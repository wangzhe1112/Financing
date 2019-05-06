function inComeAddFn(){
	if(!inComeAddPageIsOpen){
		var tabPage = tabPanel.add({
						id: "inComeAddPage",
						title:"收入添加",
						height:600,
						closable:true,
						listeners:{
							beforedestroy:function(){
								inComeAddPageIsOpen = false;
							}
						}
					});
		tabPanel.setActiveTab(tabPage);
		inComeAddPageIsOpen = true;
	}else{
		tabPanel.setActiveTab("inComeAddPage");
	}
}