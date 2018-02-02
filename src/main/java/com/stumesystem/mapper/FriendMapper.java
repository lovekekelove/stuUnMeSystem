package com.stumesystem.mapper;

import com.stumesystem.bean.Friend;

public interface FriendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Friend record);

    int insertSelective(Friend record);

    Friend selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Friend record);

    int updateByPrimaryKey(Friend record);
}