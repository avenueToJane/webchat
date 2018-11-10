package com.yang.webchat.service;

import java.util.List;

import com.yang.webchat.pojo.User;

/**
 * NAME   :  WebChat/com.amayadream.webchat.service
 * Author :  Amayadream
 * Date   :  2016.01.08 14:36
 * TODO   :
 */
public interface IUserService {
    List<User> selectAll(int page, int pageSize);
    User selectUserByUserid(String userid);
    int selectCount(int pageSize);
    boolean insert(User user);
    boolean update(User user);
    boolean delete(String userid);
}
