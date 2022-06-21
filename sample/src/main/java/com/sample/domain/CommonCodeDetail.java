package com.sample.domain;


import javax.persistence.*;
import javax.validation.constraints.Size;

import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;

import java.io.Serializable;

@Data
@Entity
@Table(name="common_code_detail")
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED) // AccessLevel.PUBLIC
@EqualsAndHashCode // (of = {"email","name"}, callSuper = true, onParam = @__(@NonNull))
@ToString //(exclude = "password") // exclude 속성을 사용하면, 특정 필드를 toString() 결과에서 제외
//@IdClass(CommonCodeDetailPK.class)
public class CommonCodeDetail implements Serializable {

 //   @Id
 //   @Column(name = "CODE" )
 //   @Size(max=10)
 //   private String code;
//
 //   @Id
 //   @Column(name = "GROUP_CODE" )
 //   @Size(max=10)
 //   private String groupCode;
    @EmbeddedId
    private CommonCodeDetailPK commonCodeDetailPK;

    @Column(name = "CODE_NAME" )
    @Size(max=100)
    private String codeName;

    @Column(name = "DELETE_FLAG")
    private Boolean deleteFlag;
}
