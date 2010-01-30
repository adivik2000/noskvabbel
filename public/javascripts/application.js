// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


    function beforeFadeColors(id) {
          var elm = document.getElementById(id); // l element qui doit etre dégradé
          new Effect.Fade(elm,{duration:'5'});
}