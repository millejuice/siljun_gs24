package gs;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequiredArgsConstructor
public class GSController {
    private final GSServiceImpl gsService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost() {
        return "add";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(GsVO item) {
        if (gsService.insertItem(item)==0){
            System.out.println("추가 실패");
        }
        else {
            System.out.println("추가 성공");
        }
        return "redirect:/posts";
    }
}
