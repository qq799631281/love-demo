import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@EnableAutoConfiguration(exclude = {DataSourceAutoConfiguration.class})
@Controller
public class app {

    public static void main(String[] args) {
        SpringApplication.run(app.class, args);
    }



    @RequestMapping("/")
    public ModelAndView index(){
        return new ModelAndView("index");
    }



    @RequestMapping("/music")
    public ModelAndView music(){
        return new ModelAndView("music");
    }

}
