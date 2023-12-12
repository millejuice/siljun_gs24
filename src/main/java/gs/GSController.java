package gs;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequiredArgsConstructor
public class GSController {
    private final GSServiceImpl gsService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
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

    @RequestMapping(value = "/posts", method = RequestMethod.GET)
    public String boardList(Model model) {
        model.addAttribute("list", gsService.getItems());
        return "posts";
    }
    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String view(@PathVariable("id") int id, Model model) {
        GsVO gsVO = gsService.getItem(id);
        model.addAttribute("list", gsVO);
        return "view";
    }

    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        GsVO boardVO = gsService.getItem(id);
        model.addAttribute("u", boardVO);
        return "editform";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(GsVO vo) {
        if (gsService.updateItem(vo) == 0) {
            System.out.println("데이터 수정 실패");
        } else {
            System.out.println("데이터 수정 성공!!!");
        }
        return "redirect:posts";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id) {
        int i = gsService.deleteItem(id);
        if (i == 0) {
            System.out.println("데이터 삭제 실패");
        } else {
            System.out.println("데이터 삭제 성공!!!");
        }
        return "redirect:../posts";
    }
}
