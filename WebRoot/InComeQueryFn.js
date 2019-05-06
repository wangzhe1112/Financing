function inComeQueryFn(){
	if(!inComeQueryPageIsOpen) {
		var tabPage = tabPanel.add({
						id: "inComeQueryPage",
						title:"收入查询",
						height:600,
						closable:true,
						listeners:{
							beforedestroy:function(){
								inComeQueryPageIsOpen = false;
							}
						}
					});
		tabPanel.setActiveTab(tabPage);
		inComeQueryPageIsOpen = true;
	}else{
		tabPanel.setActiveTab("inComeQueryPage");
	}
}