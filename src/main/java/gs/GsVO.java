package gs;

import java.awt.*;
import java.sql.Date;
import java.sql.Timestamp;

public class GsVO {
    Integer itemId;
    String itemName;
    Integer stock;
    Integer itemPrice;
    String itemImage;
    Date uploadTime;
    Date expirationDate;
    Boolean onePlusOne;

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(Integer itemPrice) {
        this.itemPrice = itemPrice;
    }

    public String getItemImage() {
        return itemImage;
    }

    public void setItemImage(String itemImage) {
        this.itemImage = itemImage;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public Boolean getOnePlusOne() {
        return onePlusOne;
    }

    public void setOnePlusOne(Boolean onePlusOne) {
        this.onePlusOne = onePlusOne;
    }
}
