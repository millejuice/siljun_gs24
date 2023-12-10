package gs;

import java.util.List;

public interface GsService {
    public int insertItem(GsVO vo);
    public int updateItem(GsVO vo);
    public int deleteItem(int itemId);
    public GsVO getItem(int itemId);
    public List<GsVO> getItems(GsVO vo);
    public void addOneplusone(GsVO vo);
    public void getPriceLimit(GsVO vo);
    public void getExpirationDate(GsVO vo);
    public void getUploadTime(GsVO vo);
    public void getRottenItem(GsVO vo);

}
