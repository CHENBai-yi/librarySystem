package com.bai.utils.mapStruct;

import com.bai.pojo.Book;
import com.bai.pojo.vo.RecommendedBooksVo;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.mapStruct
 * Date:2023/5/2 18:54
 */
@Mapper
public interface BookMap {
    BookMap BOOK_MAP = Mappers.getMapper(BookMap.class);

    @Mappings(value = {
            @Mapping(target = "newBookId", source = "bookId"),
            @Mapping(target = "newBookTitle", source = "name"),
            @Mapping(target = "bookAuthor", source = "author"),
            @Mapping(target = "publish", source = "publish"),
            @Mapping(target = "isbn", source = "ISBN"),
            @Mapping(target = "publishYear", expression = "java(book.getPublish() +\"  \"+(cn.hutool.core.date.DateUtil.format(book.getPubDate(), \"yyyy\")))"),
            @Mapping(target = "pubDate", expression = "java(cn.hutool.core.date.DateUtil.format(book.getPubDate(), \"yyyy\")+\"年\")")
    })
    RecommendedBooksVo getRecommendedBookVo(Book book);

    List<RecommendedBooksVo> getRecommendedBooksVo(List<Book> books);
}
