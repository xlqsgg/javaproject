package com.xlq.model;

public class product {
    private Integer productId;

    private String productName;

    private String productPirce;

    private Integer productAmount;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public String getProductPirce() {
        return productPirce;
    }

    public void setProductPirce(String productPirce) {
        this.productPirce = productPirce == null ? null : productPirce.trim();
    }

    public Integer getProductAmount() {
        return productAmount;
    }

    public void setProductAmount(Integer productAmount) {
        this.productAmount = productAmount;
    }
}