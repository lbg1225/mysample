package com.sample.domain;

import java.io.Serializable;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import lombok.AllArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Embeddable
public class CommonCodeDetailPK implements Serializable {
    private String code;    
    @Column(name = "group_code")
    private String groupCode;
}
