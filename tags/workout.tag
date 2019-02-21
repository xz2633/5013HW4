<workout>
  <img src="img/{ workOut }.gif">


  <div>
    <div class="fitness level">
      <div style="width:{ fitness }%;">&nbsp;</div>
    </div>
    <p>Body Fat percentage: { fitness }</p>
  </div>


  <button onclick={ exercise }>Exercise</button>
  <button onclick={ eat }>Eat</button>


  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state
    this.fitness = 20;
    this.workOut = "normal";

    //tell DOM window to increase hunger every three second
    //console.log(that);
    window.setInterval(function(){
      that.incFitness();
      console.log("wait");
      that.update();
      that.checkStatus();
      <!-- console.log(this); -->
    }, 3000);


    decFitness() {

      this.fitness = this.fitness - 2 < 10 ? 10 : this.fitness - 2;
    }

    incFitness() {
      console.log(this.fitness);
      this.fitness = this.fitness + 2 > 30 ? 30 : this.fitness + 2;
    }

    checkStatus() {
      if (this.fitness >= 25){
        this.workOut = "fat";
      } else if (this.fitness <= 15){
        this.workOut = "strong";
      }else{
        this.workOut = "normal";
      }
    }

// functions that respond to events
    exercise(e) {
      this.decFitness();
      this.checkStatus();
    }

    eat(e) {
      this.incFitness();
      this.checkStatus();
    }
  </script>

  <style>
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:200px;
  }

  </style>
</workout>
