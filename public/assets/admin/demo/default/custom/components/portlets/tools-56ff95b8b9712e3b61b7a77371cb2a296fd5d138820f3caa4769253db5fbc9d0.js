var PortletTools={init:function(){var e,t,o,n,r,f;toastr.options.showDuration=1e3,(e=new mPortlet("m_portlet_tools_1")).on("beforeCollapse",function(e){setTimeout(function(){toastr.info("Before collapse event fired!")},100)}),e.on("afterCollapse",function(e){setTimeout(function(){toastr.warning("Before collapse event fired!")},2e3)}),e.on("beforeExpand",function(e){setTimeout(function(){toastr.info("Before expand event fired!")},100)}),e.on("afterExpand",function(e){setTimeout(function(){toastr.warning("After expand event fired!")},2e3)}),e.on("beforeRemove",function(e){return toastr.info("Before remove event fired!"),confirm("Are you sure to remove this portlet ?")}),e.on("afterRemove",function(e){setTimeout(function(){toastr.warning("After remove event fired!")},2e3)}),e.on("reload",function(e){toastr.info("Leload event fired!"),mApp.block(e.getSelf(),{overlayColor:"#ffffff",type:"loader",state:"accent",opacity:.3,size:"lg"}),setTimeout(function(){mApp.unblock(e.getSelf())},2e3)}),e.on("afterFullscreenOn",function(e){var t=$(e.getBody()).find("> .m-scrollable");t.data("original-height",t.data("max-height")),t.css("height","100%"),t.css("max-height","100%"),mApp.initScroller(t,{})}),e.on("afterFullscreenOff",function(e){toastr.warning("After fullscreen off event fired!");var t=$(e.getBody()).find("> .m-scrollable");t.css("height",t.data("original-height")),t.data("max-height",t.data("original-height")),mApp.initScroller(t,{})}),(t=new mPortlet("m_portlet_tools_2")).on("beforeCollapse",function(e){setTimeout(function(){toastr.info("Before collapse event fired!")},100)}),t.on("afterCollapse",function(e){setTimeout(function(){toastr.warning("Before collapse event fired!")},2e3)}),t.on("beforeExpand",function(e){setTimeout(function(){toastr.info("Before expand event fired!")},100)}),t.on("afterExpand",function(e){setTimeout(function(){toastr.warning("After expand event fired!")},2e3)}),t.on("beforeRemove",function(e){return toastr.info("Before remove event fired!"),confirm("Are you sure to remove this portlet ?")}),t.on("afterRemove",function(e){setTimeout(function(){toastr.warning("After remove event fired!")},2e3)}),t.on("reload",function(e){toastr.info("Leload event fired!"),mApp.block(e.getSelf(),{overlayColor:"#000000",type:"spinner",state:"brand",opacity:.05,size:"lg"}),setTimeout(function(){mApp.unblock(e.getSelf())},2e3)}),(o=new mPortlet("m_portlet_tools_3")).on("beforeCollapse",function(e){setTimeout(function(){toastr.info("Before collapse event fired!")},100)}),o.on("afterCollapse",function(e){setTimeout(function(){toastr.warning("Before collapse event fired!")},2e3)}),o.on("beforeExpand",function(e){setTimeout(function(){toastr.info("Before expand event fired!")},100)}),o.on("afterExpand",function(e){setTimeout(function(){toastr.warning("After expand event fired!")},2e3)}),o.on("beforeRemove",function(e){return toastr.info("Before remove event fired!"),confirm("Are you sure to remove this portlet ?")}),o.on("afterRemove",function(e){setTimeout(function(){toastr.warning("After remove event fired!")},2e3)}),o.on("reload",function(e){toastr.info("Leload event fired!"),mApp.block(e.getSelf(),{type:"loader",state:"success",message:"Please wait..."}),setTimeout(function(){mApp.unblock(e.getSelf())},2e3)}),o.on("afterFullscreenOn",function(e){var t=$(e.getBody()).find("> .m-scrollable");t.data("original-height",t.data("max-height")),t.css("height","100%"),t.css("max-height","100%"),mApp.initScroller(t,{})}),o.on("afterFullscreenOff",function(e){toastr.warning("After fullscreen off event fired!");var t=$(e.getBody()).find("> .m-scrollable");t.css("height",t.data("original-height")),t.data("max-height",t.data("original-height")),mApp.initScroller(t,{})}),(n=new mPortlet("m_portlet_tools_4")).on("beforeCollapse",function(e){setTimeout(function(){toastr.info("Before collapse event fired!")},100)}),n.on("afterCollapse",function(e){setTimeout(function(){toastr.warning("Before collapse event fired!")},2e3)}),n.on("beforeExpand",function(e){setTimeout(function(){toastr.info("Before expand event fired!")},100)}),n.on("afterExpand",function(e){setTimeout(function(){toastr.warning("After expand event fired!")},2e3)}),n.on("beforeRemove",function(e){return toastr.info("Before remove event fired!"),confirm("Are you sure to remove this portlet ?")}),n.on("afterRemove",function(e){setTimeout(function(){toastr.warning("After remove event fired!")},2e3)}),n.on("reload",function(e){toastr.info("Leload event fired!"),mApp.block(e.getSelf(),{type:"loader",state:"brand",message:"Please wait..."}),setTimeout(function(){mApp.unblock(e.getSelf())},2e3)}),n.on("afterFullscreenOn",function(e){toastr.info("After fullscreen on event fired!");var t=$(e.getBody()).find("> .m-scrollable");t.data("original-height",t.data("max-height")),t.css("height","100%"),t.css("max-height","100%"),mApp.initScroller(t,{})}),n.on("afterFullscreenOff",function(e){toastr.warning("After fullscreen off event fired!");var t=$(e.getBody()).find("> .m-scrollable");t.css("height",t.data("original-height")),t.data("max-height",t.data("original-height")),mApp.initScroller(t,{})}),(r=new mPortlet("m_portlet_tools_5")).on("beforeCollapse",function(e){setTimeout(function(){toastr.info("Before collapse event fired!")},100)}),r.on("afterCollapse",function(e){setTimeout(function(){toastr.warning("Before collapse event fired!")},2e3)}),r.on("beforeExpand",function(e){setTimeout(function(){toastr.info("Before expand event fired!")},100)}),r.on("afterExpand",function(e){setTimeout(function(){toastr.warning("After expand event fired!")},2e3)}),r.on("beforeRemove",function(e){return toastr.info("Before remove event fired!"),confirm("Are you sure to remove this portlet ?")}),r.on("afterRemove",function(e){setTimeout(function(){toastr.warning("After remove event fired!")},2e3)}),r.on("reload",function(e){toastr.info("Leload event fired!"),mApp.block(e.getSelf(),{type:"loader",state:"brand",message:"Please wait..."}),setTimeout(function(){mApp.unblock(e.getSelf())},2e3)}),r.on("afterFullscreenOn",function(e){toastr.info("After fullscreen on event fired!")}),r.on("afterFullscreenOff",function(e){toastr.warning("After fullscreen off event fired!")}),(f=new mPortlet("m_portlet_tools_6")).on("beforeCollapse",function(e){setTimeout(function(){toastr.info("Before collapse event fired!")},100)}),f.on("afterCollapse",function(e){setTimeout(function(){toastr.warning("Before collapse event fired!")},2e3)}),f.on("beforeExpand",function(e){setTimeout(function(){toastr.info("Before expand event fired!")},100)}),f.on("afterExpand",function(e){setTimeout(function(){toastr.warning("After expand event fired!")},2e3)}),f.on("beforeRemove",function(e){return toastr.info("Before remove event fired!"),confirm("Are you sure to remove this portlet ?")}),f.on("afterRemove",function(e){setTimeout(function(){toastr.warning("After remove event fired!")},2e3)}),f.on("reload",function(e){toastr.info("Leload event fired!"),mApp.block(e.getSelf(),{type:"loader",state:"brand",message:"Please wait..."}),setTimeout(function(){mApp.unblock(e.getSelf())},2e3)}),f.on("afterFullscreenOn",function(e){toastr.info("After fullscreen on event fired!")}),f.on("afterFullscreenOff",function(e){toastr.warning("After fullscreen off event fired!")})}};jQuery(document).ready(function(){PortletTools.init()});
