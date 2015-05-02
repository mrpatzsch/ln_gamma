/*
 * Dropit v1.0
 * http://dev7studios.com/dropit
 *
 * Copyright 2012, Dev7studios
 * Free to use and abuse under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 */
!function(t){t.fn.dropit=function(i){var e={init:function(i){return this.dropit.settings=t.extend({},this.dropit.defaults,i),this.each(function(){var i=t(this),e=t.fn.dropit.settings;i.on(e.action,e["this"],function(){return t(this).hasClass("active-drop")?(t(this).removeClass("active-drop"),!1):(e.beforeHide.call(this),t(".active-drop").removeClass("active-drop"),e.afterHide.call(this),e.beforeShow.call(this),t(this).addClass("active-drop"),e.afterShow.call(this),!1)}),t(document).on("click",function(){e.beforeHide.call(this),t(".active-drop").removeClass("active-drop").find(".dropit-submenu").hide(),e.afterHide.call(this)}),e.afterLoad.call(this)})}};return e[i]?e[i].apply(this,Array.prototype.slice.call(arguments,1)):"object"!=typeof i&&i?void t.error('Method "'+i+'" does not exist in dropit plugin!'):e.init.apply(this,arguments)},t.fn.dropit.defaults={action:"click",submenuEl:"ul",triggerEl:"a",triggerParentEl:"li",afterLoad:function(){},beforeShow:function(){},afterShow:function(){},beforeHide:function(){},afterHide:function(){}},t.fn.dropit.settings={}}(jQuery);