package com.yang.webchat.service;

import java.util.List;

import com.yang.webchat.pojo.Log;

/**
 * NAME   :  WebChat/com.amayadream.webchat.service
 * Author :  Amayadream
 * Date   :  2016.01.09 16:42
 * TODO   :
 */
public interface ILogService {
    List<Log> selectAll(int page, int pageSize);
    List<Log> selectLogByUserid(String userid, int page, int pageSize);
    int selectCount(int pageSize);
    int selectCountByUserid(String userid, int pageSize);
    boolean insert(Log log);
    boolean delete(String id);
    boolean deleteThisUser(String userid);
    boolean deleteAll();
    List<Log> selectAllLog();
    
}
