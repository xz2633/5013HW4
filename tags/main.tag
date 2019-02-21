<main>
    <div>
  		<speakbox if={ creatingSpeakbox } each={ teachList }></speakbox>
  	</div>
    <div>
        <workout></workout>
    </div>
    <div>
        <box></box>
    </div>
    <div>
		    <pastsentence each={ teachList }></pastsentence>
	  </div>

  	<script>
  		var that = this;
  		this.creatingSpeakbox = false;
  		this.teachList = [];
      var that  =  this;

  		this.remove = function(event) {
  			var trainObj = event.item;
  			var index = that.teachList.indexOf(trainObj);
  			that.teachList.splice(index, 1);
  			that.update();
  		};
      
      this.unmountPastsentence = function(event) {
      this.unmount();
      };
  	</script>

</main>
