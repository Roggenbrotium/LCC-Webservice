package com.liland.lcc.ws;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import static com.liland.lcc.ws.SecurityConstants.*;

public class JWTAuthorizationFilter extends BasicAuthenticationFilter{
    
    public JWTAuthorizationFilter(AuthenticationManager authManager){
        super(authManager);
    }
    
    private static final String[] IP_HEADER_CANDIDATES = {
            "X-Forwarded-For",
            "Proxy-Client-IP",
            "WL-Proxy-Client-IP",
            "HTTP_X_FORWARDED_FOR",
            "HTTP_X_FORWARDED",
            "HTTP_X_CLUSTER_CLIENT_IP",
            "HTTP_CLIENT_IP",
            "HTTP_FORWARDED_FOR",
            "HTTP_FORWARDED",
            "HTTP_VIA",
            "REMOTE_ADDR"};
    
    /**
     * Checks the Authorization-header for a specific prefix then executes getAuthentication.
     * If the return value isn't null the request will be let through.
     */
    @Override
    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res,
                                    FilterChain chain) throws IOException, ServletException{
        String header = req.getHeader(HEADER_STRING);
        
        if(header == null || !header.startsWith(TOKEN_PREFIX)){
            chain.doFilter(req, res);
            return;
        }
        
        getClientIpAddress(req);
        
        UsernamePasswordAuthenticationToken authentication = getAuthentication(req);
        
        SecurityContextHolder.getContext().setAuthentication(authentication);
        chain.doFilter(req, res);
    }
    
    /**Checks JWT authentication.*/
    private UsernamePasswordAuthenticationToken getAuthentication(HttpServletRequest request) {
        String token = request.getHeader(HEADER_STRING);

        if (token != null) {
            String user = JWT.require(Algorithm.HMAC512(SECRET.getBytes()))
                    .build()
                    .verify(token.replace(TOKEN_PREFIX, ""))
                    .getSubject();
    
            if(user != null){
                return new UsernamePasswordAuthenticationToken(user, null, new ArrayList<>());
            }
            return null;
        }
        return null;
    }
    
    /**
     * Gets the IP-Address of the client that send the request
     */
    private void getClientIpAddress(HttpServletRequest request){
        for(String header : IP_HEADER_CANDIDATES){
            String ip = request.getHeader(header);
            if(ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)){
                WebserviceController.ipAddress = ip;
            }
        }
        WebserviceController.ipAddress = request.getRemoteAddr();
    }
}
