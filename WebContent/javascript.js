var pageHandler = {
		
		dataList: [],
		
		test: function(){
			alert('working');
		},
		
		validateValue(value){
			var flag = false;
			if(!value){
				alert('Must Enter Value...!');
				return flag;
			}
			if(this.dataList.indexOf(value) >= 0){
				alert(value + ' : Already Exist...!');
				return flag;
			}
			flag = true;
			return flag;
		},
		
		add: function(value){
			if(this.validateValue(value)){
				this.dataList.push(value);
				this.updateView();
			}
		},
		
		delete: function(index){
			
			if(index !== undefined) {
				this.dataList.splice(index, 1);
				this.updateView();
			} else{
				alert('Ivalid delete ..!');
			}
		},
		
		updateView: function(){
			$("#data_container").empty()
			var content = "<ul>";
			for(var i=0; i< this.dataList.length; i++){
				content += "<li><div class='item' ><span><img class='del-img' src='./images/delete.png' alt='delete' onclick = 'pageHandler.delete("+ i +")' ></img</span>&nbsp;" + this.dataList[i] + "</div></li>";
			}
			content += "</ul>";
			$("#data_container").html(content);
		},
		
		sendToServlet: function(){
			var url = "./userOption?data=" + this.dataList.join("__") + "&option=" + $("#option").val();
			console.log("Request Url: ", url);
			window.location.href = url;
		}
}