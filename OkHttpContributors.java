//package com.squareup.okhttp.sample;

import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Protocol;
import java.io.Reader;
import java.util.List;
import java.util.ArrayList;


public class OkHttpContributors {
  private static final String ENDPOINT = "https://google.com";

  public static void main(String... args) throws Exception {
    OkHttpClient client = new OkHttpClient();
    List<Protocol> plist = new ArrayList<Protocol>();
    plist.add(Protocol.SPDY_3);
    plist.add(Protocol.HTTP_1_1);
    client.setProtocols(plist);
    
        
    // Create request for remote resource.
    Request request = new Request.Builder()
        .url(ENDPOINT)
        .build();
        

    // Execute the request and retrieve the response.
    Response response = client.newCall(request).execute();
    System.out.println(response.protocol());
    System.out.println(response.body().string());
    }
}
