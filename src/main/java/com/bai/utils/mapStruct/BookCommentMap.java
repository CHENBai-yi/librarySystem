package com.bai.utils.mapStruct;

import com.bai.pojo.BookReviews;
import com.bai.pojo.bo.BookCommentBo;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.mapStruct
 * Date:2023/6/1 8:55
 */
@Mapper
public interface BookCommentMap {
    BookCommentMap BOOK_COMMENT_MAP = Mappers.getMapper(BookCommentMap.class);

    @Mappings({@Mapping(source = "comment_post_ID", target = "bookId"), @Mapping(source = "comment", target = "reviewText"), @Mapping(target = "reviewDate", expression = "java(new java.sql.Timestamp(new java.util.Date().getTime()))")

    })
    BookReviews bookCommentBoToBookReviews(BookCommentBo bookCommentBo);
}
