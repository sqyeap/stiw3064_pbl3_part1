package com.example.pbl3part1;

public class Quote implements java.io.Serializable {

    private String apiKey;
    private String quoteOTD;
    
    public Quote() {
    
    }
    
    public String getApiKey() {
        return apiKey;
    }
    
    public String getQuoteOTD() {
        return quoteOTD;
    }
    
    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }
    
    public void setQuoteOTD(String url) {
        this.quoteOTD = quoteOTD;
    }

}
