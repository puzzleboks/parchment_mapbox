#marine_label {
  opacity:0.65;
  comp-op:multiply;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  marker-fill:rgba(0,0,0,0);
  marker-width:0;
  [name_en='North Atlantic Ocean'] {
    marker-file:url(img/mbox_roseOnly_1a.png);
  }
  [name_en='South Pacific Ocean'][zoom<5] {
    marker-file:url(img/ship_left_a.png);
    marker-transform:translate(300,-100);
    [zoom>=4] { 
      marker-transform:translate(600,-200);
    }
  }
  [name_en='Sargasso Sea'][zoom>=3] {
    marker-file:url(img/ship_right_a.png);
    marker-transform:translate(-50,25);
    [zoom>=4] {
      marker-transform:translate(-100,50);
    }
    [zoom>=5] {
      marker-transform:translate(-200,100);
    }
    [zoom>=6] {
      marker-transform:translate(-400,200);
    }
  }
  [name_en='Indian Ocean'][zoom>=4] {
    marker-file:url(img/ship_right_a.png);
  }
  [name_en='Philippine Sea'][zoom>=5] {
    marker-file:url(img/ship_right_a.png);
  }
  [name_en='North Sea'][zoom>=5] {
    marker-file:url(img/ship_left_a.png);
  }
  [name_en='Bay of Biscay'][zoom>=6] {
    marker-file:url(img/ship_left_a.png);
  }
}