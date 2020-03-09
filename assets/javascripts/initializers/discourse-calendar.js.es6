import { Promise } from "rsvp";
import { cookAsync } from "discourse/lib/text";
import { escapeExpression } from "discourse/lib/utilities";
import loadScript from "discourse/lib/load-script";
import { withPluginApi } from "discourse/lib/plugin-api";
import { ajax } from "discourse/lib/ajax";
import { showPopover, hidePopover } from "discourse/lib/d-popover";


function initializeDiscourseCalendar(api) {
 
     
        loadScript(
          "/plugins/discourse-calendar/javascripts/fullcalendar-with-moment-timezone.min.js"
        ).then(() => {});
      
   
}

export default {
  name: "discourse-calendar",

  initialize(container) {
   
      withPluginApi("0.8.22", initializeDiscourseCalendar);
    
  }
};
