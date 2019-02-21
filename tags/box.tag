<box>
  <h3>Please type in what you want to teach me to say!</h3>
  <textarea ref="sentenceBody" rows="8" cols="100"></textarea>
  <button type="button" onclick={ sendMessage }>Teach!</button>

<script type="text/javascript">


    this.sendMessage = function(event) {
  			var newSentence = {
  				body: this.refs.sentenceBody.value
  			};
  			this.parent.teachList.push(newSentence);
  			this.parent.update();
        this.parent.creatingSpeakbox = true;
        this.parent.update();
  		};
</script>

  <style media="screen">
    :scope{
      display: block;
      border: 1px solid black;
      height: 200px;
      width: 1000px;
      margin-left: 50px;
    }
  </style>
</box>
