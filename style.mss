// PEN & INK ON PARCHMENT

// Much of the design of this style is handled by image textures.
// These were drawn by hand on paper, scanned, and tweaked in
// image editing software.

Map {
  background-image: url(img/vintage_512_shaded.jpg);
}

#water {
  polygon-pattern-file:url(img/vintage_512.jpg);
  ::outline {
    opacity:0.3;
    comp-op: multiply;
    line-pattern-file:url(img/thin_line_1.png);
  }
}

#landuse {
  opacity: 0.3;
  comp-op: multiply;
  [class='park'],
  [class='cemetery'] {
    polygon-pattern-opacity: 0.3;
    polygon-pattern-file:url(img/med_shade.png);
    [zoom>=15] { line-pattern-file:url(img/thin_line_1.png); }
  }
}

#aeroway['mapnik::geometry_type'=2][zoom>=12] {
  comp-op: multiply;
  opacity:0.5;
  [type='taxiway'] {
    [zoom=13] { line-pattern-file:url(img/thin_line_1.png); }
    [zoom=14] { line-pattern-file:url(img/thin_line_1.png); }
    [zoom=15] { line-pattern-file:url(img/line_shade_22_1.png); }
    [zoom=16] { line-pattern-file:url(img/line_shade_22_2.png); }
    [zoom>16] { line-pattern-file:url(img/line_shade_22_4.png); }
  }
  [type='runway'] {
    line-pattern-file:url(img/line_shade_22.png);
    [zoom>=15] { line-pattern-file:url(img/line_shade_22_2.png); }
    [zoom>=16] { line-pattern-file:url(img/line_shade_22_4.png); }
  }
}

#building[zoom>=15] {
  comp-op: multiply;
  opacity: 0.7;
  line-pattern-file:url(img/thin_line_1.png);
  [zoom=15], [zoom=16] {
    polygon-pattern-file:url(img/building_64.png);
  }
  [zoom=17], [zoom=18] {
    polygon-pattern-file:url(img/building_128.png);
  }
  [zoom=19], [zoom=20] {
    polygon-pattern-file:url(img/building_256.png);
  }
}

//admin_level 2 = national boarder
//disputed boundaries = 1, else 0
//maritime boundaries = 1, else 0
#admin[admin_level=2] {
  ::boundry_1 [maritime=0] {
    line-pattern-opacity:0.5;
    line-pattern-comp-op: multiply;
    line-pattern-file:url(img/thin_line_1.png);
  }
  ::boundry_2 [maritime=1] {
    opacity:0.5;
    comp-op: multiply;
    [zoom>=4] {
    line-pattern-file:url(img/dash_array_2.png);
    }
  }
  ::boundry_3 [disputed=1] {
    opacity:0.5;
    comp-op: multiply;
    [zoom>=4] {
    line-pattern-file:url(img/dash_array_2.png);
    }
  }
}

//admin_level 4 = states
//disputed boundaries = 1, else 0
//maritime boundaries = 1, else 0
#admin[admin_level>=3][maritime=0] {
  comp-op: multiply;
  line-width: 1;
  line-color: #a91b1b;
  line-opacity:0.2;
  line-dasharray:4,2;
  line-join: round;
  line-cap: round;
  [zoom>=7] { line-width: 1.5; }
  [zoom>=10] { line-width: 2.2; }
}

/* Transparent PNG overlay for paper texture */
//#world_extent_wgs84 {
//polygon-pattern-file:url(img/paperfolds_512.png);
//}
/*
#world_extent_wgs84[zoom<2] {
polygon-pattern-file:url(img/paperfolds_256.png);
}
#world_extent_wgs84[zoom>1] {
polygon-pattern-file:url(img/paperfolds_512.png);
}*/