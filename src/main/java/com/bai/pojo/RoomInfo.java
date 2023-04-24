package com.bai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RoomInfo implements Serializable {
        private long appointRoomId;
        private String room;
        private int seatNum;
        private boolean isnull;
        private List<Book> books;
}
