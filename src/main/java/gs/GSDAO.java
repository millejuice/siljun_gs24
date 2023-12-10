package gs;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class GSDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertItem(GsVO item){
        String sql = "insert into GS(itemName,stock,itemPrice,itemImage,uploadTime,expirationDate,onePlusOne) values ('"
                + item.getItemName() + "','"
                + item.getStock() + "','"
                + item.getItemPrice() + "','"
                + item.getItemImage() + "','"
                + item.getUploadTime() + "','"
                + item.getExpirationDate() + "','"
                + item.getOnePlusOne() + "')";
        return jdbcTemplate.update(sql);
    }

    public int updateItem(GsVO item){
        String sql = "update GS set "
                + "itemName = " + item.getItemName() + ","
                + "stock = " + item.getStock() + ","
                + "itemPrice = " + item.getItemPrice() + ","
                + "itemImage = " + item.getItemImage() + ","
                + "uploadTime = " + item.getUploadTime() + ","
                + "expirationDate = " + item.getExpirationDate() + ","
                + "onePlusOne = " + item.getOnePlusOne() + ","
                + "where itemId = " + item.getItemId();
        return jdbcTemplate.update(sql);
    }

    public int deleteItem(int itemId){
        String sql = "delete from GS where itemId = " + itemId;
        return jdbcTemplate.update(sql);
    }

    public GsVO getItem(int itemId){
        String sql = "select * from GS where itemId = " + itemId;
        return jdbcTemplate.query(sql,new RowMapper<GsVO>() {
            @Override
            public GsVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                GsVO item = new GsVO();
                item.setItemId(rs.getInt("itemId"));
                item.setItemName(rs.getString("itemName"));
                item.setStock(rs.getInt("stock"));
                item.setItemPrice(rs.getInt("itemPrice"));
                item.setItemImage(rs.getString("itemImage"));
                item.setUploadTime(rs.getDate("uploadTime"));
                item.setExpirationDate(rs.getDate("expirationDate"));
                item.setOnePlusOne(rs.getBoolean("onePlusOne"));
                return item;
            }
        }).get(0);
    }

    public List<GsVO> getItems(){
        String sql = "select * from GS";
        return jdbcTemplate.query(sql,new RowMapper<GsVO>() {
            @Override
            public GsVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                GsVO item = new GsVO();
                item.setItemId(rs.getInt("itemId"));
                item.setItemName(rs.getString("itemName"));
                item.setStock(rs.getInt("stock"));
                item.setItemPrice(rs.getInt("itemPrice"));
                item.setItemImage(rs.getString("itemImage"));
                item.setUploadTime(rs.getDate("uploadTime"));
                item.setExpirationDate(rs.getDate("expirationDate"));
                item.setOnePlusOne(rs.getBoolean("onePlusOne"));
                return item;
            }
        });
    }
}
