var ClipboardDemo={init:function(){new Clipboard("[data-clipboard=true]").on("success",function(e){e.clearSelection(),alert("Copied!")})}};jQuery(document).ready(function(){ClipboardDemo.init()});
