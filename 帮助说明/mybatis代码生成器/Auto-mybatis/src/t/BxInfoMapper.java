package t;

import t.BxInfo;

public interface BxInfoMapper {
    int deleteByPrimaryKey(String applyId);

    int insert(BxInfo record);

    int insertSelective(BxInfo record);

    BxInfo selectByPrimaryKey(String applyId);

    int updateByPrimaryKeySelective(BxInfo record);

    int updateByPrimaryKey(BxInfo record);
}