
import loadScript from "discourse/lib/load-script";
import { withPluginApi } from "discourse/lib/plugin-api";


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
