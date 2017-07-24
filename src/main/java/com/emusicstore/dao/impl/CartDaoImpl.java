package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Satheesh Reddy on 6/29/2017.
 */
@Repository
public class CartDaoImpl implements CartDao{
    private Map<String, Cart> cartMap;

    public CartDaoImpl() {
        cartMap = new HashMap<String, Cart>();
    }

    public Cart create(Cart cart) {
        if (cartMap.keySet().contains(cart.getCartId())){
            throw  new IllegalArgumentException(String.format("Can not create a cart. A cart with given id(%)"+"already"+"exists",cart.getCartId()));
        }
        cartMap.put(cart.getCartId(), cart);
        return cart;
    }

    public Cart read(String cartId) {
        return cartMap.get(cartId);
    }

    public void update(String cartId, Cart cart) {
        if (!cartMap.keySet().contains(cart.getCartId())){
            throw  new IllegalArgumentException(String.format("Can not update a cart. The cart with given id(%)"+" does not"+" exist",cart.getCartId()));
        }
        System.out.println("testing update CartDaoImp"+cartId);
        cartMap.put(cart.getCartId(), cart);
    }

    public void delete(String cartId) {
        if (!cartMap.keySet().contains(cartId)){
            throw  new IllegalArgumentException(String.format("Can not update a cart. The cart with given id(%)"+" does not"+" exist",cartId));
        }
        cartMap.remove(cartId);
    }

    }
