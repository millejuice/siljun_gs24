package gs;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GSServiceImpl implements GsService {
    private final GSDAO gsDAO;

    @Override
    public int insertItem(GsVO item) {
        return gsDAO.insertItem(item);
    }

    @Override
    public int updateItem(GsVO item) {
        return gsDAO.updateItem(item);
    }

    @Override
    public int deleteItem(int itemId) {
        return gsDAO.deleteItem(itemId);
    }

    @Override
    public GsVO getItem(int itemId) {
        return gsDAO.getItem(itemId);
    }

    @Override
    public List<GsVO> getItems(GsVO vo) {
        return null;
    }

    @Override
    public void addOneplusone(GsVO vo) {

    }

    @Override
    public void getPriceLimit(GsVO vo) {

    }

    @Override
    public void getExpirationDate(GsVO vo) {

    }

    @Override
    public void getUploadTime(GsVO vo) {

    }

    @Override
    public void getRottenItem(GsVO vo) {

    }
}
