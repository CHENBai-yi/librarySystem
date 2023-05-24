package com.bai.pojo.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/5/2 16:49
 */
@Data
public class RecommendedBooksVo implements Serializable {
    private long newBookId;
    private String newBookTitle;
    private String pubDate;
    private String bookAuthor;
    private String publishYear;
    private String publish;
    private String isbn;
    private String coverImg;
    private int classId;
    private String introduction;

    public long getNewBookId() {
        return newBookId;
    }

    public void setNewBookId(long newBookId) {
        this.newBookId = newBookId;
    }

    public String getNewBookTitle() {
        return newBookTitle;
    }

    public void setNewBookTitle(String newBookTitle) {
        this.newBookTitle = newBookTitle;
    }

    public String getPubDate() {
        return pubDate;
    }

    public void setPubDate(String pubDate) {
        this.pubDate = pubDate;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getPublishYear() {
        return publishYear;
    }

    public void setPublishYear(String publishYear) {
        this.publishYear = publishYear;
    }

    public String getPublish() {
        return publish;
    }

    public void setPublish(String publish) {
        this.publish = publish;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getCoverImg() {
        return coverImg;
    }

    public void setCoverImg(String coverImg) {
        this.coverImg = coverImg;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
}
