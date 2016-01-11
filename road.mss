// Line image patterns don't work well at lower zoomlevels,
// so we vary opacity, weight, and dasharrays to bring texture
// to regular line strokes.

//lines
#road['mapnik::geometry_type'=2]::line,
#bridge['mapnik::geometry_type'=2]::line,
#tunnel['mapnik::geometry_type'=2]::line {
  comp-op:multiply;
  opacity:0.7;
  [class='motorway'] {
    [zoom>=7][zoom<=11] {
      a/line-width:0.6;
      a/line-opacity:0.2;
      a/line-dasharray:2,1;
      b/line-width:0.8;
      b/line-opacity:0.2;
      b/line-dasharray:12,1;
      [zoom>=9] {
        a/line-opacity:0.1;
        b/line-opacity:0.1;
      }
      [zoom>=8] {
        a/line-width:1;
        b/line-width:1.2;
      }
      [zoom>=10] {
        a/line-width:1.6;
        b/line-width:2.0;
      }
    }
    [zoom=12] { 
      line-pattern-file:url(img/thin_line_1b.png);
    }
  }
  [class='motorway_link'],
  [class='main'] {
    [zoom>=7][zoom<=11] {
      a/line-color: #222;
      a/line-opacity: 0.25;
      a/line-width: 0.8;
      [zoom=8] { a/line-width: 0.9; }
      [zoom=9] { a/line-width: 1; }
      [zoom=10] { a/line-width: 1.1; }
      [zoom=11] { a/line-width: 1.2; }
    }
    [zoom=12] { line-pattern-file:url(img/thin_line_1b.png); }
    [zoom=13] { line-pattern-file:url(img/thin_line_1b.png); }
  }
  [class='street'],
  [class='street_limited'] {
    [zoom=12] {
      a/line-width:1.5;
      a/line-opacity:0.05;
      a/line-dasharray:2,1;
      b/line-width:1.2;
      b/line-opacity:0.05;
      b/line-dasharray:12,1;
    }
    [zoom=13] { line-pattern-file:url(img/thin_line_1b.png); }
    [zoom=14] { line-pattern-file:url(img/thin_line_1b.png); }
  }
  [class='service'] {
    [zoom>=15] { line-pattern-file:url(img/thin_line_1b.png); }
  }
  [class='path'] {
    [zoom=16] { line-pattern-file:url(img/dash_dotted_6.png); }
    [zoom=17] { line-pattern-file:url(img/dash_dotted_6.png); }
    [zoom>17] { line-pattern-file:url(img/dash_dotted_8.png); }
  }
  [class='major_rail'][zoom>=15],
    [class='minor_rail'][zoom>=16] {
    ['mapnik::geometry_type'=2] {
      [zoom=15] {line-pattern-file:url(img/railroad_16.png); }
      [zoom>=16] {line-pattern-file:url(img/railroad_14.png); }
    }
  }
}
//cases
#road::case,
#bridge::case,
#tunnel::case {
  comp-op:multiply;
  ['mapnik::geometry_type'=2][zoom>=13][zoom<=20] {
    [class='motorway'] {
      [zoom=13] { line-pattern-file:url(img/thin_line_3.png); }
      [zoom=14] { line-pattern-file:url(img/thin_line_3.png); }
      [zoom=15] { line-pattern-file:url(img/thin_line_3.png); }
      [zoom=16] { line-pattern-file:url(img/line_case_1c.png); }
      [zoom>16] { line-pattern-file:url(img/line_case_1d.png); }
    }
    [class='motorway_link'],
    [class='main'] {
      [zoom=14] { line-pattern-file:url(img/thin_line_3.png); }
      [zoom=15] { line-pattern-file:url(img/thin_line_3.png); }
      [zoom=16] { line-pattern-file:url(img/line_case_1c.png); }
      [zoom>16] { line-pattern-file:url(img/line_case_1d.png); }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=15] { line-pattern-file:url(img/thin_line_3.png); }
      [zoom>16] { line-pattern-file:url(img/line_case_1d.png); }
    }
  }
}
//dots
#road::dotCase ['mapnik::geometry_type'=1][class='turning_circle'][zoom>=15] { 
  comp-op:multiply;
  [zoom>=15] { point-file: url(img/dot_case_1aa.png); }
  [zoom>=16] { point-file: url(img/dot_case_1a.png); }
  [zoom>=17] { point-file: url(img/dot_case_1b.png); }
}

//fills
#road::fill,
#bridge::fill {
  ['mapnik::geometry_type'=2][zoom>=13][zoom<=20] {
    [class='motorway'] {
      [zoom=13] { line-pattern-file:url(img/thin_line_2_fill.png); }
      [zoom=14] { line-pattern-file:url(img/thin_line_2_fill.png); }
      [zoom=15] { line-pattern-file:url(img/thin_line_3_fill.png); }
      [zoom=16] { line-pattern-file:url(img/line_fill_1b.png); }
      [zoom>16] { line-pattern-file:url(img/line_fill_1d.png); }
    }
    [class='motorway_link'],
    [class='main'] {
      [zoom=14] { line-pattern-file:url(img/thin_line_2_fill.png); }
      [zoom=15] { line-pattern-file:url(img/thin_line_3_fill.png); }
      [zoom=16] { line-pattern-file:url(img/line_fill_1b.png); }
      [zoom>16] { line-pattern-file:url(img/line_fill_1d.png); }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom=15] { line-pattern-file:url(img/thin_line_3_fill.png); }
      [zoom=16] { line-pattern-file:url(img/line_fill_1b.png); }
      [zoom>16] { line-pattern-file:url(img/line_fill_1d.png); }
    }
  }
}
#road::dotFill ['mapnik::geometry_type'=1][class='turning_circle'][zoom>=15] {
  point-allow-overlap: true;
  [zoom>=15] { point-file: url(img/dot_fill_1aa.png); }
  [zoom>=16] { point-file: url(img/dot_fill_1a.png); }
  [zoom>=17] { point-file: url(img/dot_fill_1b.png); }
}

#tunnel::case { opacity:0.25; }